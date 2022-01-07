; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_chardata.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_chardata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i8*, i64*, %struct.TYPE_11__, %struct.reader_position }
%struct.TYPE_11__ = type { %struct.reader_position }
%struct.reader_position = type { i32 }

@XmlReadResumeState_CharData = common dso_local global i64 0, align 8
@XmlReadResume_Body = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@XmlNodeType_Whitespace = common dso_local global i8* null, align 8
@XmlNodeType_Text = common dso_local global i8* null, align 8
@StringValue_Value = common dso_local global i32 0, align 4
@reader_parse_chardata.ampW = internal constant [2 x i8] c"&\00", align 1
@WC_E_CDSECTEND = common dso_local global i32 0, align 4
@XmlReadResumeState_Initial = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @reader_parse_chardata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_chardata(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.reader_position, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @XmlReadResumeState_CharData, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* @XmlReadResume_Body, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = call i8* @reader_get_ptr(%struct.TYPE_12__* %20)
  store i8* %21, i8** %5, align 8
  br label %64

22:                                               ; preds = %1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = call i32 @reader_shrink(%struct.TYPE_12__* %23)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = call i8* @reader_get_ptr(%struct.TYPE_12__* %25)
  store i8* %26, i8** %5, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = call i64 @reader_get_cur(%struct.TYPE_12__* %27)
  store i64 %28, i64* %6, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 60
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %22
  %38 = load i32, i32* @S_OK, align 4
  store i32 %38, i32* %2, align 4
  br label %147

39:                                               ; preds = %32
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @is_wchar_space(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i8*, i8** @XmlNodeType_Whitespace, align 8
  br label %48

46:                                               ; preds = %39
  %47 = load i8*, i8** @XmlNodeType_Text, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i8* [ %45, %44 ], [ %47, %46 ]
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* @XmlReadResume_Body, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64 %52, i64* %57, align 8
  %58 = load i64, i64* @XmlReadResumeState_CharData, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = load i32, i32* @StringValue_Value, align 4
  %63 = call i32 @reader_set_strvalue(%struct.TYPE_12__* %61, i32 %62, i32* null)
  br label %64

64:                                               ; preds = %48, %13
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 4
  %67 = bitcast %struct.reader_position* %4 to i8*
  %68 = bitcast %struct.reader_position* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 4, i1 false)
  br label %69

69:                                               ; preds = %142, %64
  %70 = load i8*, i8** %5, align 8
  %71 = load i8, i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %73, label %145

73:                                               ; preds = %69
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 93
  br i1 %78, label %79, label %93

79:                                               ; preds = %73
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 93
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 62
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @WC_E_CDSECTEND, align 4
  store i32 %92, i32* %2, align 4
  br label %147

93:                                               ; preds = %85, %79, %73
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 60
  br i1 %98, label %99, label %123

99:                                               ; preds = %93
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = bitcast %struct.reader_position* %102 to i8*
  %104 = bitcast %struct.reader_position* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 4 %104, i64 4, i1 false)
  %105 = load i64, i64* %6, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %107 = call i64 @reader_get_cur(%struct.TYPE_12__* %106)
  %108 = load i64, i64* %6, align 8
  %109 = sub nsw i64 %107, %108
  %110 = call i32 @reader_init_strvalue(i64 %105, i64 %109, i32* %7)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %112 = load i32, i32* @StringValue_Value, align 4
  %113 = call i32 @reader_set_strvalue(%struct.TYPE_12__* %111, i32 %112, i32* %7)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 2
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* @XmlReadResume_Body, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  store i64 0, i64* %118, align 8
  %119 = load i64, i64* @XmlReadResumeState_Initial, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load i32, i32* @S_OK, align 4
  store i32 %122, i32* %2, align 4
  br label %147

123:                                              ; preds = %93
  %124 = load i8*, i8** %5, align 8
  %125 = load i8, i8* %124, align 1
  %126 = call i64 @is_wchar_space(i8 signext %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %123
  %129 = load i8*, i8** @XmlNodeType_Text, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %128, %123
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %134 = call i32 @reader_cmp(%struct.TYPE_12__* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @reader_parse_chardata.ampW, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %138 = call i32 @reader_parse_reference(%struct.TYPE_12__* %137)
  br label %142

139:                                              ; preds = %132
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %141 = call i32 @reader_skipn(%struct.TYPE_12__* %140, i32 1)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %144 = call i8* @reader_get_ptr(%struct.TYPE_12__* %143)
  store i8* %144, i8** %5, align 8
  br label %69

145:                                              ; preds = %69
  %146 = load i32, i32* @S_OK, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %145, %99, %91, %37
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i8* @reader_get_ptr(%struct.TYPE_12__*) #1

declare dso_local i32 @reader_shrink(%struct.TYPE_12__*) #1

declare dso_local i64 @reader_get_cur(%struct.TYPE_12__*) #1

declare dso_local i64 @is_wchar_space(i8 signext) #1

declare dso_local i32 @reader_set_strvalue(%struct.TYPE_12__*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @reader_init_strvalue(i64, i64, i32*) #1

declare dso_local i32 @reader_cmp(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @reader_parse_reference(%struct.TYPE_12__*) #1

declare dso_local i32 @reader_skipn(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
