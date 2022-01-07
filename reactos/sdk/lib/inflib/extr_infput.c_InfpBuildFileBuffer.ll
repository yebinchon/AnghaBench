; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infput.c_InfpBuildFileBuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infput.c_InfpBuildFileBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32*, i64, i64, i32, i32* }

@INF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Processing section %S\0A\00", align 1
@EOL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i32] [i32 91, i32 0], align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 93, i32 0], align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Line with key %S\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i32] [i32 32, i32 61, i32 32, i32 0], align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"Line without key\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i32] [i32 44, i32 0], align 4
@FALSE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [2 x i32] [i32 34, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfpBuildFileBuffer(%struct.TYPE_11__* %0, i32** %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 4
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @INF_STATUS_SUCCESS, align 4
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  store i32 %17, i32* %18, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %8, align 8
  br label %22

22:                                               ; preds = %145, %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %149

25:                                               ; preds = %22
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = icmp ne %struct.TYPE_8__* %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i8*, i8** @EOL, align 8
  %37 = call i32 @Output(%struct.TYPE_12__* %7, i8* %36)
  br label %38

38:                                               ; preds = %35, %25
  %39 = call i32 @Output(%struct.TYPE_12__* %7, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @Output(%struct.TYPE_12__* %7, i8* %42)
  %44 = call i32 @Output(%struct.TYPE_12__* %7, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %45 = load i8*, i8** @EOL, align 8
  %46 = call i32 @Output(%struct.TYPE_12__* %7, i8* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %9, align 8
  br label %50

50:                                               ; preds = %139, %38
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %52 = icmp ne %struct.TYPE_9__* %51, null
  br i1 %52, label %53, label %145

53:                                               ; preds = %50
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* null, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @Output(%struct.TYPE_12__* %7, i8* %65)
  %67 = call i32 @Output(%struct.TYPE_12__* %7, i8* bitcast ([4 x i32]* @.str.4 to i8*))
  br label %70

68:                                               ; preds = %53
  %69 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %58
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %10, align 8
  br label %74

74:                                               ; preds = %135, %70
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = icmp ne %struct.TYPE_10__* %75, null
  br i1 %76, label %77, label %139

77:                                               ; preds = %74
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = icmp ne %struct.TYPE_10__* %78, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = call i32 @Output(%struct.TYPE_12__* %7, i8* bitcast ([2 x i32]* @.str.6 to i8*))
  br label %85

85:                                               ; preds = %83, %77
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %11, align 8
  %89 = load i64, i64* @FALSE, align 8
  store i64 %89, i64* %12, align 8
  br label %90

90:                                               ; preds = %112, %85
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 0, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i64, i64* %12, align 8
  %96 = icmp ne i64 %95, 0
  %97 = xor i1 %96, true
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i1 [ false, %90 ], [ %97, %94 ]
  br i1 %99, label %100, label %118

100:                                              ; preds = %98
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 44, %102
  br i1 %103, label %112, label %104

104:                                              ; preds = %100
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 59, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32*, i32** %11, align 8
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 92, %110
  br label %112

112:                                              ; preds = %108, %104, %100
  %113 = phi i1 [ true, %104 ], [ true, %100 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %12, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %11, align 8
  br label %90

118:                                              ; preds = %98
  %119 = load i64, i64* %12, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %118
  %122 = call i32 @Output(%struct.TYPE_12__* %7, i8* bitcast ([2 x i32]* @.str.7 to i8*))
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = bitcast i32* %125 to i8*
  %127 = call i32 @Output(%struct.TYPE_12__* %7, i8* %126)
  %128 = call i32 @Output(%struct.TYPE_12__* %7, i8* bitcast ([2 x i32]* @.str.7 to i8*))
  br label %135

129:                                              ; preds = %118
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = bitcast i32* %132 to i8*
  %134 = call i32 @Output(%struct.TYPE_12__* %7, i8* %133)
  br label %135

135:                                              ; preds = %129, %121
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  store %struct.TYPE_10__* %138, %struct.TYPE_10__** %10, align 8
  br label %74

139:                                              ; preds = %74
  %140 = load i8*, i8** @EOL, align 8
  %141 = call i32 @Output(%struct.TYPE_12__* %7, i8* %140)
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  store %struct.TYPE_9__* %144, %struct.TYPE_9__** %9, align 8
  br label %50

145:                                              ; preds = %50
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  store %struct.TYPE_8__* %148, %struct.TYPE_8__** %8, align 8
  br label %22

149:                                              ; preds = %22
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @INF_SUCCESS(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32**, i32*** %5, align 8
  store i32* %156, i32** %157, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = sub nsw i64 %159, %161
  %163 = load i64*, i64** %6, align 8
  store i64 %162, i64* %163, align 8
  br label %173

164:                                              ; preds = %149
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* null, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @FREE(i32* %170)
  br label %172

172:                                              ; preds = %168, %164
  br label %173

173:                                              ; preds = %172, %154
  %174 = load i32, i32* @INF_STATUS_SUCCESS, align 4
  ret i32 %174
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @Output(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @INF_SUCCESS(i32) #1

declare dso_local i32 @FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
