<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StudentCategory extends Model
{
    use HasFactory;

        protected $fillable = [
        'title', 'slug', 'description', 'status',
    ];

    public function students()
    {
        return $this->hasMany(Student::class, 'category_id');
    }
}
