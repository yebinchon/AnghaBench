; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_pi.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64*, i32 }

@StringValue_LocalName = common dso_local global i32 0, align 4
@StringValue_QualifiedName = common dso_local global i32 0, align 4
@StringValue_Value = common dso_local global i32 0, align 4
@strval_empty = common dso_local global i32 0, align 4
@XmlReadResumeState_PIBody = common dso_local global i32 0, align 4
@XmlReadResume_Body = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@XmlNodeType_ProcessingInstruction = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @reader_parse_pi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_pi(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %49 [
    i32 129, label %13
    i32 128, label %20
  ]

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = call i32 @reader_skipn(%struct.TYPE_11__* %14, i32 2)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = call i32 @reader_shrink(%struct.TYPE_11__* %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i32 128, i32* %19, align 8
  br label %20

20:                                               ; preds = %1, %13
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = call i32 @reader_parse_pitarget(%struct.TYPE_11__* %21, i32* %4)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @FAILED(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %128

28:                                               ; preds = %20
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = load i32, i32* @StringValue_LocalName, align 4
  %31 = call i32 @reader_set_strvalue(%struct.TYPE_11__* %29, i32 %30, i32* %4)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = load i32, i32* @StringValue_QualifiedName, align 4
  %34 = call i32 @reader_set_strvalue(%struct.TYPE_11__* %32, i32 %33, i32* %4)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = load i32, i32* @StringValue_Value, align 4
  %37 = call i32 @reader_set_strvalue(%struct.TYPE_11__* %35, i32 %36, i32* @strval_empty)
  %38 = load i32, i32* @XmlReadResumeState_PIBody, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = call i8* @reader_get_cur(%struct.TYPE_11__* %41)
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @XmlReadResume_Body, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 %43, i64* %48, align 8
  br label %49

49:                                               ; preds = %1, %28
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @XmlReadResume_Body, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %6, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = call i8* @reader_get_ptr(%struct.TYPE_11__* %57)
  store i8* %58, i8** %5, align 8
  br label %59

59:                                               ; preds = %121, %50
  %60 = load i8*, i8** %5, align 8
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %126

63:                                               ; preds = %59
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 63
  br i1 %68, label %69, label %121

69:                                               ; preds = %63
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 62
  br i1 %74, label %75, label %120

75:                                               ; preds = %69
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = call i8* @reader_get_cur(%struct.TYPE_11__* %76)
  %78 = ptrtoint i8* %77 to i64
  store i64 %78, i64* %8, align 8
  br label %79

79:                                               ; preds = %92, %75
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* %8, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i8* @reader_get_ptr2(%struct.TYPE_11__* %84, i64 %85)
  store i8* %86, i8** %5, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = load i8, i8* %87, align 1
  %89 = call i32 @is_wchar_space(i8 signext %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %83
  br label %95

92:                                               ; preds = %83
  %93 = load i64, i64* %6, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %6, align 8
  br label %79

95:                                               ; preds = %91, %79
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %6, align 8
  %99 = sub nsw i64 %97, %98
  %100 = call i32 @reader_init_strvalue(i64 %96, i64 %99, i32* %9)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %102 = call i32 @reader_skipn(%struct.TYPE_11__* %101, i32 2)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %104 = call i32 @debug_strval(%struct.TYPE_11__* %103, i32* %9)
  %105 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @XmlNodeType_ProcessingInstruction, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  store i32 129, i32* %110, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* @XmlReadResume_Body, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  store i64 0, i64* %115, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %117 = load i32, i32* @StringValue_Value, align 4
  %118 = call i32 @reader_set_strvalue(%struct.TYPE_11__* %116, i32 %117, i32* %9)
  %119 = load i32, i32* @S_OK, align 4
  store i32 %119, i32* %2, align 4
  br label %128

120:                                              ; preds = %69
  br label %121

121:                                              ; preds = %120, %63
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %123 = call i32 @reader_skipn(%struct.TYPE_11__* %122, i32 1)
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %125 = call i8* @reader_get_ptr(%struct.TYPE_11__* %124)
  store i8* %125, i8** %5, align 8
  br label %59

126:                                              ; preds = %59
  %127 = load i32, i32* @S_OK, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %126, %95, %26
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @reader_skipn(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @reader_shrink(%struct.TYPE_11__*) #1

declare dso_local i32 @reader_parse_pitarget(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @reader_set_strvalue(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i8* @reader_get_cur(%struct.TYPE_11__*) #1

declare dso_local i8* @reader_get_ptr(%struct.TYPE_11__*) #1

declare dso_local i8* @reader_get_ptr2(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @is_wchar_space(i8 signext) #1

declare dso_local i32 @reader_init_strvalue(i64, i64, i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debug_strval(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
