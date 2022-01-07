; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_vlc.c_vlclua_read_custom_meta_data.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_vlc.c_vlclua_read_custom_meta_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"meta\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"'meta' keys and values must be strings\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlclua_read_custom_meta_data(i32* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i32 @vlc_mutex_lock(i32* %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = call i64 (...) @vlc_meta_New()
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @lua_getfield(i32* %21, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @lua_istable(i32* %23, i32 -1)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %20
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @lua_pushnil(i32* %27)
  br label %29

29:                                               ; preds = %46, %41, %26
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @lua_next(i32* %30, i32 -2)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @lua_isstring(i32* %34, i32 -2)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @lua_isstring(i32* %38, i32 -1)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37, %33
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @msg_Err(i32* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @lua_pop(i32* %44, i32 1)
  br label %29

46:                                               ; preds = %37
  %47 = load i32*, i32** %5, align 8
  %48 = call i8* @lua_tostring(i32* %47, i32 -2)
  store i8* %48, i8** %7, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i8* @lua_tostring(i32* %49, i32 -1)
  store i8* %50, i8** %8, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @vlc_meta_AddExtra(i64 %53, i8* %54, i8* %55)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @lua_pop(i32* %57, i32 1)
  br label %29

59:                                               ; preds = %29
  br label %60

60:                                               ; preds = %59, %20
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @lua_pop(i32* %61, i32 1)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @vlc_mutex_unlock(i32* %64)
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @vlc_meta_New(...) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i64 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i32 @lua_isstring(i32*, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @vlc_meta_AddExtra(i64, i8*, i8*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
