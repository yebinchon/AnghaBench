; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_out_frame_poc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_out_frame_poc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@__const.xml_out_frame_poc.spaces = private unnamed_addr constant [13 x i8] c"            \00", align 1
@j2k_default_tcp = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"%s<ProgressionOrderChange Marker=\22POC\22>\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s  <Progression Num=\22%d\22>\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%S    <RSpoc>%d</RSpoc>\0A\00", align 1
@notes = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [89 x i8] c"%s    <!-- Resolution level index (inclusive) for progression start. Range: 0 to 33 -->\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%s    <CSpoc>%d</CSpoc>\0A\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"%s    <!-- Component index (inclusive) for progression start. -->\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%s    <LYEpoc>%d</LYEpoc>\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"%s    <!-- Layer index (exclusive) for progression end. -->\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%s    <REpoc>%d</REpoc>\0A\00", align 1
@.str.9 = private unnamed_addr constant [91 x i8] c"%s    <!-- Resolution level index (exclusive) for progression end. Range: RSpoc to 33 -->\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"%s    <CEpoc>%d</CEpoc>\0A\00", align 1
@.str.11 = private unnamed_addr constant [81 x i8] c"%s    <!-- Component index (exclusive) for progression end.  Minimum: CSpoc -->\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"%s    <Ppoc>%d</Ppoc>\0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"%s    <!-- Defined Progression Order Values are: -->\0A\00", align 1
@.str.14 = private unnamed_addr constant [65 x i8] c"%s    <!-- 0 = LRCP; 1 = RLCP; 2 = RPCL; 3 = PCRL; 4 = CPRL -->\0A\00", align 1
@.str.15 = private unnamed_addr constant [92 x i8] c"%s    <!-- where L = \22layer\22, R = \22resolution level\22, C = \22component\22, P = \22position\22. -->\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s  </Progression>\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"%s</ProgressionOrderChange\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xml_out_frame_poc(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca [13 x i8], align 1
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %9 = bitcast [13 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.xml_out_frame_poc.spaces, i32 0, i32 0), i64 13, i1 false)
  %10 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  store i8* %10, i8** %8, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @j2k_default_tcp, align 8
  %13 = icmp eq %struct.TYPE_5__* %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %8, align 8
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %141

25:                                               ; preds = %19
  %26 = load i32*, i32** %3, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %134, %25
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %137

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %6, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %48, i32 %51)
  %53 = load i64, i64* @notes, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %35
  %56 = load i32*, i32** %3, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %55, %35
  %60 = load i32*, i32** %3, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %61, i32 %64)
  %66 = load i64, i64* @notes, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i32*, i32** %3, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %69, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %68, %59
  %73 = load i32*, i32** %3, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %74, i32 %77)
  %79 = load i64, i64* @notes, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load i32*, i32** %3, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %81, %72
  %86 = load i32*, i32** %3, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %87, i32 %90)
  %92 = load i64, i64* @notes, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = load i32*, i32** %3, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %95, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.9, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %94, %85
  %99 = load i32*, i32** %3, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* %100, i32 %103)
  %105 = load i64, i64* @notes, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %98
  %108 = load i32*, i32** %3, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %108, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.11, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %107, %98
  %112 = load i32*, i32** %3, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* %113, i32 %116)
  %118 = load i64, i64* @notes, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %111
  %121 = load i32*, i32** %3, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %121, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0), i8* %122)
  %124 = load i32*, i32** %3, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %124, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.14, i64 0, i64 0), i8* %125)
  %127 = load i32*, i32** %3, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %127, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.15, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %120, %111
  %131 = load i32*, i32** %3, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %132)
  br label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %5, align 4
  br label %29

137:                                              ; preds = %29
  %138 = load i32*, i32** %3, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %137, %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
