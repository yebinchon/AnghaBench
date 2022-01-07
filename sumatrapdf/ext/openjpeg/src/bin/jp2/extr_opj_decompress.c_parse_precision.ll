; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_opj_decompress.c_parse_precision.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_opj_decompress.c_parse_precision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@OPJ_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%d%c%c\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid precision %d in precision option %s\0A\00", align 1
@OPJ_FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Invalid precision mode %c in precision option %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Invalid character %c in precision option %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Could not allocate memory for precision option\0A\00", align 1
@OPJ_PREC_MODE_CLIP = common dso_local global i32 0, align 4
@OPJ_PREC_MODE_SCALE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Could not parse precision option %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_7__*)* @parse_precision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_precision(i8* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %5, align 8
  %14 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = call i32 @free(%struct.TYPE_6__* %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %25, align 8
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %29

29:                                               ; preds = %195, %26
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @sscanf(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %7, i8* %8, i8* %9)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  store i8 67, i8* %8, align 1
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i8, i8* %8, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 44
  br i1 %43, label %44, label %50

44:                                               ; preds = %40, %37
  %45 = load i8, i8* %8, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 44
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i8 67, i8* %8, align 1
  br label %49

49:                                               ; preds = %48, %44
  store i8 44, i8* %9, align 1
  store i32 3, i32* %10, align 4
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %190

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp sgt i32 %57, 32
  br i1 %58, label %59, label %65

59:                                               ; preds = %56, %53
  %60 = load i32, i32* @stderr, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %61, i8* %62)
  %64 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %64, i32* %6, align 4
  br label %196

65:                                               ; preds = %56
  %66 = load i8, i8* %8, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i8, i8* %8, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 83
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32, i32* @stderr, align 4
  %75 = load i8, i8* %8, align 1
  %76 = sext i8 %75 to i32
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %76, i8* %77)
  %79 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %79, i32* %6, align 4
  br label %196

80:                                               ; preds = %69, %65
  %81 = load i8, i8* %9, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 44
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load i32, i32* @stderr, align 4
  %86 = load i8, i8* %9, align 1
  %87 = sext i8 %86 to i32
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %87, i8* %88)
  %90 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %90, i32* %6, align 4
  br label %196

91:                                               ; preds = %80
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = icmp eq %struct.TYPE_6__* %94, null
  br i1 %95, label %96, label %110

96:                                               ; preds = %91
  %97 = call i64 @malloc(i32 8)
  %98 = inttoptr i64 %97 to %struct.TYPE_6__*
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store %struct.TYPE_6__* %98, %struct.TYPE_6__** %100, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = icmp eq %struct.TYPE_6__* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load i32, i32* @stderr, align 4
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %108, i32* %6, align 4
  br label %196

109:                                              ; preds = %96
  br label %141

110:                                              ; preds = %91
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add i32 %113, 1
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i32, i32* @stderr, align 4
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %120 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %120, i32* %6, align 4
  br label %196

121:                                              ; preds = %110
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = zext i32 %125 to i64
  %127 = mul i64 %126, 8
  %128 = trunc i64 %127 to i32
  %129 = call i64 @realloc(%struct.TYPE_6__* %124, i32 %128)
  %130 = inttoptr i64 %129 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %130, %struct.TYPE_6__** %12, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %132 = icmp eq %struct.TYPE_6__* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %121
  %134 = load i32, i32* @stderr, align 4
  %135 = call i32 (i32, i8*, ...) @fprintf(i32 %134, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %136 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %136, i32* %6, align 4
  br label %196

137:                                              ; preds = %121
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  store %struct.TYPE_6__* %138, %struct.TYPE_6__** %140, align 8
  br label %141

141:                                              ; preds = %137, %109
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  store i32 %142, i32* %151, align 4
  %152 = load i8, i8* %8, align 1
  %153 = sext i8 %152 to i32
  switch i32 %153, label %176 [
    i32 67, label %154
    i32 83, label %165
  ]

154:                                              ; preds = %141
  %155 = load i32, i32* @OPJ_PREC_MODE_CLIP, align 4
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  store i32 %155, i32* %164, align 4
  br label %177

165:                                              ; preds = %141
  %166 = load i32, i32* @OPJ_PREC_MODE_SCALE, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  store i32 %166, i32* %175, align 4
  br label %177

176:                                              ; preds = %141
  br label %177

177:                                              ; preds = %176, %165, %154
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = add i32 %180, 1
  store i32 %181, i32* %179, align 8
  %182 = load i8*, i8** %5, align 8
  %183 = call i8* @strchr(i8* %182, i8 signext 44)
  store i8* %183, i8** %5, align 8
  %184 = load i8*, i8** %5, align 8
  %185 = icmp eq i8* %184, null
  br i1 %185, label %186, label %187

186:                                              ; preds = %177
  br label %196

187:                                              ; preds = %177
  %188 = load i8*, i8** %5, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  store i8* %189, i8** %5, align 8
  br label %195

190:                                              ; preds = %50
  %191 = load i32, i32* @stderr, align 4
  %192 = load i8*, i8** %3, align 8
  %193 = call i32 (i32, i8*, ...) @fprintf(i32 %191, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %192)
  %194 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %194, i32* %6, align 4
  br label %196

195:                                              ; preds = %187
  br label %29

196:                                              ; preds = %190, %186, %133, %117, %105, %84, %73, %59
  %197 = load i32, i32* %6, align 4
  ret i32 %197
}

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @realloc(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
