; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_sproto_dump.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_sproto_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sproto = type { i32, i32, %struct.protocol*, %struct.sproto_type* }
%struct.protocol = type { i8*, i32, i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i8* }
%struct.sproto_type = type { i8*, i32, %struct.field* }
%struct.field = type { i32, i64, i8*, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [18 x i8] c"=== %d types ===\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@SPROTO_TARRAY = common dso_local global i32 0, align 4
@SPROTO_TSTRUCT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"decimal\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@SPROTO_TSTRING_BINARY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"\09%s (%d) %s%s\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"=== %d protocol ===\0A\00", align 1
@SPROTO_REQUEST = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [20 x i8] c"\09%s (%d) request:%s\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"\09%s (%d) request:(null)\00", align 1
@SPROTO_RESPONSE = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [13 x i8] c" response:%s\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c" response nil\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sproto_dump(%struct.sproto* %0) #0 {
  %2 = alloca %struct.sproto*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sproto_type*, align 8
  %6 = alloca [2 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca %struct.field*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.protocol*, align 8
  store %struct.sproto* %0, %struct.sproto** %2, align 8
  %11 = load %struct.sproto*, %struct.sproto** %2, align 8
  %12 = getelementptr inbounds %struct.sproto, %struct.sproto* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %132, %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.sproto*, %struct.sproto** %2, align 8
  %18 = getelementptr inbounds %struct.sproto, %struct.sproto* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %135

21:                                               ; preds = %15
  %22 = load %struct.sproto*, %struct.sproto** %2, align 8
  %23 = getelementptr inbounds %struct.sproto, %struct.sproto* %22, i32 0, i32 3
  %24 = load %struct.sproto_type*, %struct.sproto_type** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %24, i64 %26
  store %struct.sproto_type* %27, %struct.sproto_type** %5, align 8
  %28 = load %struct.sproto_type*, %struct.sproto_type** %5, align 8
  %29 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %128, %21
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.sproto_type*, %struct.sproto_type** %5, align 8
  %35 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %131

38:                                               ; preds = %32
  %39 = bitcast [2 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %39, i8 0, i64 2, i1 false)
  store i8* null, i8** %7, align 8
  %40 = load %struct.sproto_type*, %struct.sproto_type** %5, align 8
  %41 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %40, i32 0, i32 2
  %42 = load %struct.field*, %struct.field** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.field, %struct.field* %42, i64 %44
  store %struct.field* %45, %struct.field** %8, align 8
  %46 = load %struct.field*, %struct.field** %8, align 8
  %47 = getelementptr inbounds %struct.field, %struct.field* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SPROTO_TARRAY, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  store i32 %51, i32* %9, align 4
  %52 = load %struct.field*, %struct.field** %8, align 8
  %53 = getelementptr inbounds %struct.field, %struct.field* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SPROTO_TARRAY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %38
  %59 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 42, i8* %59, align 1
  br label %62

60:                                               ; preds = %38
  %61 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %61, align 1
  br label %62

62:                                               ; preds = %60, %58
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @SPROTO_TSTRUCT, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.field*, %struct.field** %8, align 8
  %68 = getelementptr inbounds %struct.field, %struct.field* %67, i32 0, i32 5
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %7, align 8
  br label %94

72:                                               ; preds = %62
  %73 = load i32, i32* %9, align 4
  switch i32 %73, label %92 [
    i32 129, label %74
    i32 130, label %82
    i32 128, label %83
  ]

74:                                               ; preds = %72
  %75 = load %struct.field*, %struct.field** %8, align 8
  %76 = getelementptr inbounds %struct.field, %struct.field* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %81

80:                                               ; preds = %74
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %81

81:                                               ; preds = %80, %79
  br label %93

82:                                               ; preds = %72
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %93

83:                                               ; preds = %72
  %84 = load %struct.field*, %struct.field** %8, align 8
  %85 = getelementptr inbounds %struct.field, %struct.field* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SPROTO_TSTRING_BINARY, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %91

90:                                               ; preds = %83
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %91

91:                                               ; preds = %90, %89
  br label %93

92:                                               ; preds = %72
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %93

93:                                               ; preds = %92, %91, %82, %81
  br label %94

94:                                               ; preds = %93, %66
  %95 = load %struct.field*, %struct.field** %8, align 8
  %96 = getelementptr inbounds %struct.field, %struct.field* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.field*, %struct.field** %8, align 8
  %99 = getelementptr inbounds %struct.field, %struct.field* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %97, i32 %100, i8* %101, i8* %102)
  %104 = load i32, i32* %9, align 4
  %105 = icmp eq i32 %104, 129
  br i1 %105, label %106, label %116

106:                                              ; preds = %94
  %107 = load %struct.field*, %struct.field** %8, align 8
  %108 = getelementptr inbounds %struct.field, %struct.field* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.field*, %struct.field** %8, align 8
  %113 = getelementptr inbounds %struct.field, %struct.field* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 %114)
  br label %116

116:                                              ; preds = %111, %106, %94
  %117 = load %struct.field*, %struct.field** %8, align 8
  %118 = getelementptr inbounds %struct.field, %struct.field* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = icmp sge i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.field*, %struct.field** %8, align 8
  %123 = getelementptr inbounds %struct.field, %struct.field* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 %124)
  br label %126

126:                                              ; preds = %121, %116
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %4, align 4
  br label %32

131:                                              ; preds = %32
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %3, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %3, align 4
  br label %15

135:                                              ; preds = %15
  %136 = load %struct.sproto*, %struct.sproto** %2, align 8
  %137 = getelementptr inbounds %struct.sproto, %struct.sproto* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %138)
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %212, %135
  %141 = load i32, i32* %3, align 4
  %142 = load %struct.sproto*, %struct.sproto** %2, align 8
  %143 = getelementptr inbounds %struct.sproto, %struct.sproto* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %215

146:                                              ; preds = %140
  %147 = load %struct.sproto*, %struct.sproto** %2, align 8
  %148 = getelementptr inbounds %struct.sproto, %struct.sproto* %147, i32 0, i32 2
  %149 = load %struct.protocol*, %struct.protocol** %148, align 8
  %150 = load i32, i32* %3, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.protocol, %struct.protocol* %149, i64 %151
  store %struct.protocol* %152, %struct.protocol** %10, align 8
  %153 = load %struct.protocol*, %struct.protocol** %10, align 8
  %154 = getelementptr inbounds %struct.protocol, %struct.protocol* %153, i32 0, i32 3
  %155 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %154, align 8
  %156 = load i64, i64* @SPROTO_REQUEST, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %155, i64 %156
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = icmp ne %struct.TYPE_4__* %158, null
  br i1 %159, label %160, label %176

160:                                              ; preds = %146
  %161 = load %struct.protocol*, %struct.protocol** %10, align 8
  %162 = getelementptr inbounds %struct.protocol, %struct.protocol* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.protocol*, %struct.protocol** %10, align 8
  %165 = getelementptr inbounds %struct.protocol, %struct.protocol* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.protocol*, %struct.protocol** %10, align 8
  %168 = getelementptr inbounds %struct.protocol, %struct.protocol* %167, i32 0, i32 3
  %169 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %168, align 8
  %170 = load i64, i64* @SPROTO_REQUEST, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %169, i64 %170
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %163, i32 %166, i8* %174)
  br label %184

176:                                              ; preds = %146
  %177 = load %struct.protocol*, %struct.protocol** %10, align 8
  %178 = getelementptr inbounds %struct.protocol, %struct.protocol* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.protocol*, %struct.protocol** %10, align 8
  %181 = getelementptr inbounds %struct.protocol, %struct.protocol* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* %179, i32 %182)
  br label %184

184:                                              ; preds = %176, %160
  %185 = load %struct.protocol*, %struct.protocol** %10, align 8
  %186 = getelementptr inbounds %struct.protocol, %struct.protocol* %185, i32 0, i32 3
  %187 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %186, align 8
  %188 = load i64, i64* @SPROTO_RESPONSE, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %187, i64 %188
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = icmp ne %struct.TYPE_4__* %190, null
  br i1 %191, label %192, label %202

192:                                              ; preds = %184
  %193 = load %struct.protocol*, %struct.protocol** %10, align 8
  %194 = getelementptr inbounds %struct.protocol, %struct.protocol* %193, i32 0, i32 3
  %195 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %194, align 8
  %196 = load i64, i64* @SPROTO_RESPONSE, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %195, i64 %196
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* %200)
  br label %210

202:                                              ; preds = %184
  %203 = load %struct.protocol*, %struct.protocol** %10, align 8
  %204 = getelementptr inbounds %struct.protocol, %struct.protocol* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %202
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  br label %209

209:                                              ; preds = %207, %202
  br label %210

210:                                              ; preds = %209, %192
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %212

212:                                              ; preds = %210
  %213 = load i32, i32* %3, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %3, align 4
  br label %140

215:                                              ; preds = %140
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
