; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_cdata.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_cdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64*, i32 }

@XmlReadResumeState_CDATA = common dso_local global i64 0, align 8
@XmlReadResume_Body = common dso_local global i64 0, align 8
@XmlNodeType_CDATA = common dso_local global i32 0, align 4
@StringValue_Value = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@XmlReadResumeState_Initial = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @reader_parse_cdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_cdata(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @XmlReadResumeState_CDATA, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @XmlReadResume_Body, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = call i8* @reader_get_ptr(%struct.TYPE_9__* %19)
  store i8* %20, i8** %4, align 8
  br label %45

21:                                               ; preds = %1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = call i32 @reader_skipn(%struct.TYPE_9__* %22, i32 9)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = call i32 @reader_shrink(%struct.TYPE_9__* %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = call i8* @reader_get_ptr(%struct.TYPE_9__* %26)
  store i8* %27, i8** %4, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = call i64 @reader_get_cur(%struct.TYPE_9__* %28)
  store i64 %29, i64* %5, align 8
  %30 = load i32, i32* @XmlNodeType_CDATA, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @XmlReadResume_Body, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  store i64 %33, i64* %38, align 8
  %39 = load i64, i64* @XmlReadResumeState_CDATA, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = load i32, i32* @StringValue_Value, align 4
  %44 = call i32 @reader_set_strvalue(%struct.TYPE_9__* %42, i32 %43, i32* null)
  br label %45

45:                                               ; preds = %21, %12
  br label %46

46:                                               ; preds = %96, %45
  %47 = load i8*, i8** %4, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %97

50:                                               ; preds = %46
  %51 = load i8*, i8** %4, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 93
  br i1 %54, label %55, label %91

55:                                               ; preds = %50
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 93
  br i1 %60, label %61, label %91

61:                                               ; preds = %55
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 62
  br i1 %66, label %67, label %91

67:                                               ; preds = %61
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = call i64 @reader_get_cur(%struct.TYPE_9__* %69)
  %71 = load i64, i64* %5, align 8
  %72 = sub nsw i64 %70, %71
  %73 = call i32 @reader_init_strvalue(i64 %68, i64 %72, i32* %6)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = call i32 @reader_skipn(%struct.TYPE_9__* %74, i32 3)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = call i32 @debug_strval(%struct.TYPE_9__* %76, i32* %6)
  %78 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = load i32, i32* @StringValue_Value, align 4
  %81 = call i32 @reader_set_strvalue(%struct.TYPE_9__* %79, i32 %80, i32* %6)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* @XmlReadResume_Body, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  store i64 0, i64* %86, align 8
  %87 = load i64, i64* @XmlReadResumeState_Initial, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load i32, i32* @S_OK, align 4
  store i32 %90, i32* %2, align 4
  br label %99

91:                                               ; preds = %61, %55, %50
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = call i32 @reader_skipn(%struct.TYPE_9__* %92, i32 1)
  %94 = load i8*, i8** %4, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %4, align 8
  br label %96

96:                                               ; preds = %91
  br label %46

97:                                               ; preds = %46
  %98 = load i32, i32* @S_OK, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %67
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i8* @reader_get_ptr(%struct.TYPE_9__*) #1

declare dso_local i32 @reader_skipn(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @reader_shrink(%struct.TYPE_9__*) #1

declare dso_local i64 @reader_get_cur(%struct.TYPE_9__*) #1

declare dso_local i32 @reader_set_strvalue(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @reader_init_strvalue(i64, i64, i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debug_strval(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
