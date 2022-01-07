; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_pstcache.c_pstcache_init.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_pstcache.c_pstcache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i64, i64, i64 }

@True = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to get/make cache directory!\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"cache/pstcache_%d_%d\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"persistent bitmap cache file: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"Persistent bitmap caching is disabled. (The file is already in use)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pstcache_init(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @True, align 4
  store i32 %13, i32* %3, align 4
  br label %76

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32 0, i32* %19, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24, %14
  %30 = load i32, i32* @False, align 4
  store i32 %30, i32* %3, align 4
  br label %76

31:                                               ; preds = %24
  %32 = call i32 (...) @rd_pstcache_mkdir()
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = call i32 @DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @False, align 4
  store i32 %36, i32* %3, align 4
  br label %76

37:                                               ; preds = %31
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 7
  %42 = sdiv i32 %41, 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %46, i32 %49)
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %52 = call i32 @DEBUG(i8* %51)
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %54 = call i32 @rd_open_file(i8* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %59

57:                                               ; preds = %37
  %58 = load i32, i32* @False, align 4
  store i32 %58, i32* %3, align 4
  br label %76

59:                                               ; preds = %37
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @rd_lock_file(i32 %60, i32 0, i32 0)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = call i32 @warning(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @rd_close_file(i32 %65)
  %67 = load i32, i32* @False, align 4
  store i32 %67, i32* %3, align 4
  br label %76

68:                                               ; preds = %59
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 %69, i32* %74, align 4
  %75 = load i32, i32* @True, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %68, %63, %57, %34, %29, %12
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @rd_pstcache_mkdir(...) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, i32) #1

declare dso_local i32 @rd_open_file(i8*) #1

declare dso_local i32 @rd_lock_file(i32, i32, i32) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @rd_close_file(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
