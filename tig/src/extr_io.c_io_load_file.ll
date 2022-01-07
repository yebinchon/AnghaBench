; ModuleID = '/home/carl/AnghaBench/tig/src/extr_io.c_io_load_file.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_io.c_io_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io = type { i32 }
%struct.buffer = type { i8* }

@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io*, i8*, i64*, i32 (i8*, i64, i8*, i64, i8*)*, i8*)* @io_load_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_load_file(%struct.io* %0, i8* %1, i64* %2, i32 (i8*, i64, i8*, i64, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.io*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32 (i8*, i64, i8*, i64, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.buffer, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.io* %0, %struct.io** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 (i8*, i64, i8*, i64, i8*)* %3, i32 (i8*, i64, i8*, i64, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %17 = load i32, i32* @SUCCESS, align 4
  store i32 %17, i32* %12, align 4
  br label %18

18:                                               ; preds = %53, %5
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @SUCCESS, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.io*, %struct.io** %6, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = call i64 @io_get_line(%struct.io* %23, %struct.buffer* %11, i8 signext 10, i64* %24, i32 1, i8 signext 92)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i1 [ false, %18 ], [ %26, %22 ]
  br i1 %28, label %29, label %61

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @string_trim(i8* %31)
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strcspn(i8* %33, i8* %34)
  store i64 %35, i64* %15, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = load i64, i64* %15, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %29
  %42 = load i8*, i8** %13, align 8
  %43 = load i64, i64* %15, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 0, i8* %44, align 1
  %45 = load i8*, i8** %13, align 8
  %46 = load i64, i64* %15, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = call i8* @string_trim(i8* %48)
  store i8* %49, i8** %14, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = call i64 @strlen(i8* %50)
  store i64 %51, i64* %16, align 8
  br label %53

52:                                               ; preds = %29
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  store i64 0, i64* %16, align 8
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i32 (i8*, i64, i8*, i64, i8*)*, i32 (i8*, i64, i8*, i64, i8*)** %9, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = load i64, i64* %16, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 %54(i8* %55, i64 %56, i8* %57, i64 %58, i8* %59)
  store i32 %60, i32* %12, align 4
  br label %18

61:                                               ; preds = %27
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @SUCCESS, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load %struct.io*, %struct.io** %6, align 8
  %67 = call i64 @io_error(%struct.io* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.io*, %struct.io** %6, align 8
  %71 = call i32 @io_strerror(%struct.io* %70)
  %72 = call i32 @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %69, %65, %61
  %74 = load %struct.io*, %struct.io** %6, align 8
  %75 = call i32 @io_done(%struct.io* %74)
  %76 = load i32, i32* %12, align 4
  ret i32 %76
}

declare dso_local i64 @io_get_line(%struct.io*, %struct.buffer*, i8 signext, i64*, i32, i8 signext) #1

declare dso_local i8* @string_trim(i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @io_error(%struct.io*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @io_strerror(%struct.io*) #1

declare dso_local i32 @io_done(%struct.io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
