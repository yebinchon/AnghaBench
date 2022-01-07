; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_misc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@S_FALSE = common dso_local global i64 0, align 8
@XmlReadResumeState_Initial = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unknown resume state %d\0A\00", align 1
@commentW = common dso_local global i32 0, align 4
@piW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*)* @reader_parse_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reader_parse_misc(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load i64, i64* @S_FALSE, align 8
  store i64 %6, i64* %4, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @XmlReadResumeState_Initial, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = call i64 @reader_more(%struct.TYPE_9__* %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @FAILED(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i64, i64* %4, align 8
  store i64 %19, i64* %2, align 8
  br label %78

20:                                               ; preds = %12
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %33 [
    i32 129, label %24
    i32 130, label %24
    i32 131, label %27
    i32 128, label %30
  ]

24:                                               ; preds = %20, %20
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = call i64 @reader_parse_pi(%struct.TYPE_9__* %25)
  store i64 %26, i64* %2, align 8
  br label %78

27:                                               ; preds = %20
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = call i64 @reader_parse_comment(%struct.TYPE_9__* %28)
  store i64 %29, i64* %2, align 8
  br label %78

30:                                               ; preds = %20
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = call i64 @reader_parse_whitespace(%struct.TYPE_9__* %31)
  store i64 %32, i64* %2, align 8
  br label %78

33:                                               ; preds = %20
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %1
  br label %40

40:                                               ; preds = %39, %75
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = call i32* @reader_get_ptr(%struct.TYPE_9__* %41)
  store i32* %42, i32** %5, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @is_wchar_space(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = call i64 @reader_parse_whitespace(%struct.TYPE_9__* %48)
  store i64 %49, i64* %4, align 8
  br label %69

50:                                               ; preds = %40
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = load i32, i32* @commentW, align 4
  %53 = call i32 @reader_cmp(%struct.TYPE_9__* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = call i64 @reader_parse_comment(%struct.TYPE_9__* %56)
  store i64 %57, i64* %4, align 8
  br label %68

58:                                               ; preds = %50
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = load i32, i32* @piW, align 4
  %61 = call i32 @reader_cmp(%struct.TYPE_9__* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = call i64 @reader_parse_pi(%struct.TYPE_9__* %64)
  store i64 %65, i64* %4, align 8
  br label %67

66:                                               ; preds = %58
  br label %76

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %55
  br label %69

69:                                               ; preds = %68, %47
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @S_FALSE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i64, i64* %4, align 8
  store i64 %74, i64* %2, align 8
  br label %78

75:                                               ; preds = %69
  br label %40

76:                                               ; preds = %66
  %77 = load i64, i64* %4, align 8
  store i64 %77, i64* %2, align 8
  br label %78

78:                                               ; preds = %76, %73, %30, %27, %24, %18
  %79 = load i64, i64* %2, align 8
  ret i64 %79
}

declare dso_local i64 @reader_more(%struct.TYPE_9__*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @reader_parse_pi(%struct.TYPE_9__*) #1

declare dso_local i64 @reader_parse_comment(%struct.TYPE_9__*) #1

declare dso_local i64 @reader_parse_whitespace(%struct.TYPE_9__*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32* @reader_get_ptr(%struct.TYPE_9__*) #1

declare dso_local i64 @is_wchar_space(i32) #1

declare dso_local i32 @reader_cmp(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
