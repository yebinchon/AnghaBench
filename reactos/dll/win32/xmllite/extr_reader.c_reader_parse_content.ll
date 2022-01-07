; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_content.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }

@reader_parse_content.cdstartW = internal constant [10 x i8] c"<![CDATA[\00", align 1
@reader_parse_content.etagW = internal constant [3 x i8] c"</\00", align 1
@XmlReadResumeState_Initial = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unknown resume state %d\0A\00", align 1
@commentW = common dso_local global i8* null, align 8
@piW = common dso_local global i8* null, align 8
@ltW = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @reader_parse_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_content(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @XmlReadResumeState_Initial, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %25 [
    i32 132, label %13
    i32 130, label %16
    i32 129, label %19
    i32 128, label %19
    i32 131, label %22
  ]

13:                                               ; preds = %9
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = call i32 @reader_parse_cdata(%struct.TYPE_11__* %14)
  store i32 %15, i32* %2, align 4
  br label %74

16:                                               ; preds = %9
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = call i32 @reader_parse_comment(%struct.TYPE_11__* %17)
  store i32 %18, i32* %2, align 4
  br label %74

19:                                               ; preds = %9, %9
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = call i32 @reader_parse_pi(%struct.TYPE_11__* %20)
  store i32 %21, i32* %2, align 4
  br label %74

22:                                               ; preds = %9
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = call i32 @reader_parse_chardata(%struct.TYPE_11__* %23)
  store i32 %24, i32* %2, align 4
  br label %74

25:                                               ; preds = %9
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = call i32 @reader_shrink(%struct.TYPE_11__* %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = call i32 @reader_cmp(%struct.TYPE_11__* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @reader_parse_content.etagW, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = call i32 @reader_parse_endtag(%struct.TYPE_11__* %38)
  store i32 %39, i32* %2, align 4
  br label %74

40:                                               ; preds = %31
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = load i8*, i8** @commentW, align 8
  %43 = call i32 @reader_cmp(%struct.TYPE_11__* %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = call i32 @reader_parse_comment(%struct.TYPE_11__* %46)
  store i32 %47, i32* %2, align 4
  br label %74

48:                                               ; preds = %40
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = load i8*, i8** @piW, align 8
  %51 = call i32 @reader_cmp(%struct.TYPE_11__* %49, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = call i32 @reader_parse_pi(%struct.TYPE_11__* %54)
  store i32 %55, i32* %2, align 4
  br label %74

56:                                               ; preds = %48
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = call i32 @reader_cmp(%struct.TYPE_11__* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @reader_parse_content.cdstartW, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = call i32 @reader_parse_cdata(%struct.TYPE_11__* %61)
  store i32 %62, i32* %2, align 4
  br label %74

63:                                               ; preds = %56
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = load i8*, i8** @ltW, align 8
  %66 = call i32 @reader_cmp(%struct.TYPE_11__* %64, i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = call i32 @reader_parse_element(%struct.TYPE_11__* %69)
  store i32 %70, i32* %2, align 4
  br label %74

71:                                               ; preds = %63
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = call i32 @reader_parse_chardata(%struct.TYPE_11__* %72)
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %71, %68, %60, %53, %45, %37, %22, %19, %16, %13
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @reader_parse_cdata(%struct.TYPE_11__*) #1

declare dso_local i32 @reader_parse_comment(%struct.TYPE_11__*) #1

declare dso_local i32 @reader_parse_pi(%struct.TYPE_11__*) #1

declare dso_local i32 @reader_parse_chardata(%struct.TYPE_11__*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @reader_shrink(%struct.TYPE_11__*) #1

declare dso_local i32 @reader_cmp(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @reader_parse_endtag(%struct.TYPE_11__*) #1

declare dso_local i32 @reader_parse_element(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
