; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_comment.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64*, i32 }

@XmlReadResumeState_Comment = common dso_local global i64 0, align 8
@XmlReadResume_Body = common dso_local global i64 0, align 8
@XmlNodeType_Comment = common dso_local global i32 0, align 4
@StringValue_Value = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@XmlReadResumeState_Initial = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@WC_E_COMMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @reader_parse_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_comment(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @XmlReadResumeState_Comment, align 8
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
  %23 = call i32 @reader_skipn(%struct.TYPE_9__* %22, i32 4)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = call i32 @reader_shrink(%struct.TYPE_9__* %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = call i8* @reader_get_ptr(%struct.TYPE_9__* %26)
  store i8* %27, i8** %4, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = call i64 @reader_get_cur(%struct.TYPE_9__* %28)
  store i64 %29, i64* %5, align 8
  %30 = load i32, i32* @XmlNodeType_Comment, align 4
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
  %39 = load i64, i64* @XmlReadResumeState_Comment, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = load i32, i32* @StringValue_Value, align 4
  %44 = call i32 @reader_set_strvalue(%struct.TYPE_9__* %42, i32 %43, i32* null)
  br label %45

45:                                               ; preds = %21, %12
  br label %46

46:                                               ; preds = %95, %45
  %47 = load i8*, i8** %4, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %100

50:                                               ; preds = %46
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 45
  br i1 %55, label %56, label %95

56:                                               ; preds = %50
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 45
  br i1 %61, label %62, label %94

62:                                               ; preds = %56
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 62
  br i1 %67, label %68, label %92

68:                                               ; preds = %62
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = call i64 @reader_get_cur(%struct.TYPE_9__* %70)
  %72 = load i64, i64* %5, align 8
  %73 = sub nsw i64 %71, %72
  %74 = call i32 @reader_init_strvalue(i64 %69, i64 %73, i32* %6)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = call i32 @debug_strval(%struct.TYPE_9__* %75, i32* %6)
  %77 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = call i32 @reader_skipn(%struct.TYPE_9__* %78, i32 3)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = load i32, i32* @StringValue_Value, align 4
  %82 = call i32 @reader_set_strvalue(%struct.TYPE_9__* %80, i32 %81, i32* %6)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* @XmlReadResume_Body, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  store i64 0, i64* %87, align 8
  %88 = load i64, i64* @XmlReadResumeState_Initial, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i32, i32* @S_OK, align 4
  store i32 %91, i32* %2, align 4
  br label %102

92:                                               ; preds = %62
  %93 = load i32, i32* @WC_E_COMMENT, align 4
  store i32 %93, i32* %2, align 4
  br label %102

94:                                               ; preds = %56
  br label %95

95:                                               ; preds = %94, %50
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = call i32 @reader_skipn(%struct.TYPE_9__* %96, i32 1)
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %4, align 8
  br label %46

100:                                              ; preds = %46
  %101 = load i32, i32* @S_OK, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %92, %68
  %103 = load i32, i32* %2, align 4
  ret i32 %103
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
