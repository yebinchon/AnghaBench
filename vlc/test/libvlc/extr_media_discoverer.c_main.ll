; ModuleID = '/home/carl/AnghaBench/vlc/test/libvlc/extr_media_discoverer.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/test/libvlc/extr_media_discoverer.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i32 }

@test_defaults_nargs = common dso_local global i32 0, align 4
@test_defaults_args = common dso_local global i32 0, align 4
@libvlc_media_discoverer_devices = common dso_local global i64 0, align 8
@libvlc_media_discoverer_localdirs = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"== getting list of media_discoverer for %d category ==\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"warn: no discoverers (not critical)\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"= discoverer: name: '%s', longname: '%s' =\0A\00", align 1
@libvlc_media_discoverer_lan = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = call i32 (...) @test_init()
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i8* [ %19, %16 ], [ null, %20 ]
  store i8* %22, i8** %6, align 8
  %23 = load i32, i32* @test_defaults_nargs, align 4
  %24 = load i32, i32* @test_defaults_args, align 4
  %25 = call i32* @libvlc_new(i32 %23, i32 %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = call i32 @alarm(i32 0)
  %34 = load i32*, i32** %7, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @test_discoverer(i32* %34, i8* %35, i32 1)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @libvlc_release(i32* %37)
  store i32 0, i32* %3, align 4
  br label %98

39:                                               ; preds = %21
  %40 = load i64, i64* @libvlc_media_discoverer_devices, align 8
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %92, %39
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @libvlc_media_discoverer_localdirs, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %95

45:                                               ; preds = %41
  %46 = load i64, i64* %8, align 8
  %47 = call i32 (i8*, ...) @test_log(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i64 @libvlc_media_discoverer_list_get(i32* %48, i64 %49, %struct.TYPE_4__*** %9)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = call i32 (i8*, ...) @test_log(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %92

55:                                               ; preds = %45
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %57 = icmp ne %struct.TYPE_4__** %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %85, %55
  %61 = load i32, i32* %11, align 4
  %62 = zext i32 %61 to i64
  %63 = load i64, i64* %10, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %60
  %66 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %67 = load i32, i32* %11, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %66, i64 %68
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %12, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, ...) @test_log(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %80, i32 %83)
  br label %85

85:                                               ; preds = %65
  %86 = load i32, i32* %11, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %60

88:                                               ; preds = %60
  %89 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @libvlc_media_discoverer_list_release(%struct.TYPE_4__** %89, i64 %90)
  br label %92

92:                                               ; preds = %88, %53
  %93 = load i64, i64* %8, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %8, align 8
  br label %41

95:                                               ; preds = %41
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @libvlc_release(i32* %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %95, %32
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @test_init(...) #1

declare dso_local i32* @libvlc_new(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @test_discoverer(i32*, i8*, i32) #1

declare dso_local i32 @libvlc_release(i32*) #1

declare dso_local i32 @test_log(i8*, ...) #1

declare dso_local i64 @libvlc_media_discoverer_list_get(i32*, i64, %struct.TYPE_4__***) #1

declare dso_local i32 @libvlc_media_discoverer_list_release(%struct.TYPE_4__**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
