# mysite/urls.py
from django.contrib import admin
from django.urls import path, include  # include allows referencing app-level URLs

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include('api.urls')),  # <-- This line connects your api app's urls.py
]
