; ModuleID = '/home/carl/AnghaBench/vlc/src/test/extr_url.c_test_url_parse_internal.c'
source_filename = "/home/carl/AnghaBench/vlc/src/test/extr_url.c_test_url_parse_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i32, i8*, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"\22%s\22 accepted, expected rejection\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@exitcode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"\22%s\22 returned %u, expected %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i8*, i8*, i8*, i32, i8*, i8*)* @test_url_parse_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_url_parse_internal(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, i8* %7, i8* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_5__, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i8* %8, i8** %18, align 8
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %9
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @vlc_UrlParseFixup(%struct.TYPE_5__* %19, i8* %24)
  br label %29

26:                                               ; preds = %9
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @vlc_UrlParse(%struct.TYPE_5__* %19, i8* %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i32 [ %25, %23 ], [ %28, %26 ]
  store i32 %30, i32* %20, align 4
  %31 = load i8*, i8** %12, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %29
  %34 = load i8*, i8** %13, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  %37 = load i8*, i8** %14, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  %40 = load i8*, i8** %15, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %61

42:                                               ; preds = %39
  %43 = load i32, i32* %16, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  %46 = load i8*, i8** %17, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i8*, i8** %18, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = call i32 @vlc_UrlClean(%struct.TYPE_5__* %19)
  %53 = load i32, i32* %20, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* @stderr, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = call i32 @exit(i32 2) #3
  unreachable

60:                                               ; preds = %51
  br label %119

61:                                               ; preds = %48, %45, %42, %39, %36, %33, %29
  %62 = load i8*, i8** %10, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @test_compare(i8* %62, i8* %63, i8* %65)
  %67 = load i8*, i8** %10, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @test_compare(i8* %67, i8* %68, i8* %70)
  %72 = load i8*, i8** %10, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @test_compare(i8* %72, i8* %73, i8* %75)
  %77 = load i32, i32* %20, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %61
  %80 = load i64, i64* @errno, align 8
  %81 = load i64, i64* @ENOSYS, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @test_compare(i8* %84, i8* null, i8* %86)
  store i32 77, i32* @exitcode, align 4
  br label %94

88:                                               ; preds = %79, %61
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %91 = load i8*, i8** %90, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = call i32 @test_compare(i8* %89, i8* %91, i8* %92)
  br label %94

94:                                               ; preds = %88, %83
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load i32, i32* @stderr, align 4
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %16, align 4
  %105 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %101, i32 %103, i32 %104)
  %106 = call i32 @exit(i32 2) #3
  unreachable

107:                                              ; preds = %94
  %108 = load i8*, i8** %10, align 8
  %109 = load i8*, i8** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 5
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @test_compare(i8* %108, i8* %109, i8* %111)
  %113 = load i8*, i8** %10, align 8
  %114 = load i8*, i8** %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 6
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @test_compare(i8* %113, i8* %114, i8* %116)
  %118 = call i32 @vlc_UrlClean(%struct.TYPE_5__* %19)
  br label %119

119:                                              ; preds = %107, %60
  ret void
}

declare dso_local i32 @vlc_UrlParseFixup(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @vlc_UrlParse(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @vlc_UrlClean(%struct.TYPE_5__*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @test_compare(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
