; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerGetAntiAffinityScore.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerGetAntiAffinityScore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i8*, i8*, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }

@cluster_manager = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@clusterManagerDictType = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"m%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, %struct.TYPE_12__***, i32*)* @clusterManagerGetAntiAffinityScore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusterManagerGetAntiAffinityScore(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_12__*** %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__***, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__**, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_10__*, align 8
  %28 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_12__*** %2, %struct.TYPE_12__**** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cluster_manager, i32 0, i32 0), align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  store %struct.TYPE_12__** null, %struct.TYPE_12__*** %13, align 8
  %32 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %7, align 8
  %33 = icmp ne %struct.TYPE_12__*** %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %4
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = call %struct.TYPE_12__** @zcalloc(i32 %38)
  %40 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %7, align 8
  store %struct.TYPE_12__** %39, %struct.TYPE_12__*** %40, align 8
  %41 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %7, align 8
  %42 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %41, align 8
  store %struct.TYPE_12__** %42, %struct.TYPE_12__*** %13, align 8
  br label %43

43:                                               ; preds = %34, %4
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %216, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %219

48:                                               ; preds = %44
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %51
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %14, align 8
  %53 = call i32* @dictCreate(i32* @clusterManagerDictType, i32* null)
  store i32* %53, i32** %15, align 8
  store i8* null, i8** %16, align 8
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %126, %48
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %129

60:                                               ; preds = %54
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %63, i64 %65
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %17, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %69 = icmp eq %struct.TYPE_12__* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %126

71:                                               ; preds = %60
  %72 = load i8*, i8** %16, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %16, align 8
  br label %78

78:                                               ; preds = %74, %71
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  br label %91

87:                                               ; preds = %78
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  br label %91

91:                                               ; preds = %87, %83
  %92 = phi i8* [ %86, %83 ], [ %90, %87 ]
  store i8* %92, i8** %19, align 8
  %93 = load i8*, i8** %19, align 8
  %94 = icmp ne i8* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load i32*, i32** %15, align 8
  %98 = load i8*, i8** %19, align 8
  %99 = call i32* @dictFind(i32* %97, i8* %98)
  store i32* %99, i32** %20, align 8
  %100 = load i32*, i32** %20, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %91
  %103 = load i32*, i32** %20, align 8
  %104 = call i64 @dictGetVal(i32* %103)
  %105 = inttoptr i64 %104 to i8*
  %106 = call i8* @sdsdup(i8* %105)
  store i8* %106, i8** %18, align 8
  br label %109

107:                                              ; preds = %91
  %108 = call i8* (...) @sdsempty()
  store i8* %108, i8** %18, align 8
  br label %109

109:                                              ; preds = %107, %102
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %118, label %114

114:                                              ; preds = %109
  %115 = load i8*, i8** %18, align 8
  %116 = load i8*, i8** %18, align 8
  %117 = call i8* @sdscatprintf(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %116)
  store i8* %117, i8** %18, align 8
  br label %121

118:                                              ; preds = %109
  %119 = load i8*, i8** %18, align 8
  %120 = call i8* @sdscat(i8* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %120, i8** %18, align 8
  br label %121

121:                                              ; preds = %118, %114
  %122 = load i32*, i32** %15, align 8
  %123 = load i8*, i8** %19, align 8
  %124 = load i8*, i8** %18, align 8
  %125 = call i32 @dictReplace(i32* %122, i8* %123, i8* %124)
  br label %126

126:                                              ; preds = %121, %70
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %54

129:                                              ; preds = %54
  %130 = load i32*, i32** %15, align 8
  %131 = call i32* @dictGetIterator(i32* %130)
  store i32* %131, i32** %21, align 8
  br label %132

132:                                              ; preds = %210, %168, %147, %129
  %133 = load i32*, i32** %21, align 8
  %134 = call i32* @dictNext(i32* %133)
  store i32* %134, i32** %22, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %211

136:                                              ; preds = %132
  %137 = load i32*, i32** %22, align 8
  %138 = call i64 @dictGetVal(i32* %137)
  %139 = inttoptr i64 %138 to i8*
  store i8* %139, i8** %23, align 8
  %140 = load i32*, i32** %22, align 8
  %141 = call i64 @dictGetKey(i32* %140)
  %142 = inttoptr i64 %141 to i8*
  store i8* %142, i8** %24, align 8
  %143 = load i8*, i8** %23, align 8
  %144 = call i32 @sdslen(i8* %143)
  store i32 %144, i32* %25, align 4
  %145 = load i32, i32* %25, align 4
  %146 = icmp slt i32 %145, 2
  br i1 %146, label %147, label %148

147:                                              ; preds = %136
  br label %132

148:                                              ; preds = %136
  %149 = load i8*, i8** %23, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 109
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = load i32, i32* %25, align 4
  %156 = sub nsw i32 %155, 1
  %157 = mul nsw i32 10000, %156
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %9, align 4
  br label %165

160:                                              ; preds = %148
  %161 = load i32, i32* %25, align 4
  %162 = mul nsw i32 1, %161
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %9, align 4
  br label %165

165:                                              ; preds = %160, %154
  %166 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %7, align 8
  %167 = icmp eq %struct.TYPE_12__*** %166, null
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  br label %132

169:                                              ; preds = %165
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cluster_manager, i32 0, i32 0), align 8
  %171 = call i32 @listRewind(%struct.TYPE_13__* %170, i32* %26)
  br label %172

172:                                              ; preds = %209, %183, %169
  %173 = call %struct.TYPE_10__* @listNext(i32* %26)
  store %struct.TYPE_10__* %173, %struct.TYPE_10__** %27, align 8
  %174 = icmp ne %struct.TYPE_10__* %173, null
  br i1 %174, label %175, label %210

175:                                              ; preds = %172
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  store %struct.TYPE_12__* %178, %struct.TYPE_12__** %28, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = icmp eq i8* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %175
  br label %172

184:                                              ; preds = %175
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = load i8*, i8** %24, align 8
  %189 = call i32 @strcmp(i8* %187, i8* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %209, label %191

191:                                              ; preds = %184
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = load i8*, i8** %16, align 8
  %196 = call i32 @strcmp(i8* %194, i8* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %209, label %198

198:                                              ; preds = %191
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %200 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %200, i32 1
  store %struct.TYPE_12__** %201, %struct.TYPE_12__*** %13, align 8
  store %struct.TYPE_12__* %199, %struct.TYPE_12__** %200, align 8
  %202 = load i32*, i32** %8, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %208

204:                                              ; preds = %198
  %205 = load i32*, i32** %8, align 8
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %204, %198
  br label %210

209:                                              ; preds = %191, %184
  br label %172

210:                                              ; preds = %208, %172
  br label %132

211:                                              ; preds = %132
  %212 = load i32*, i32** %21, align 8
  %213 = call i32 @dictReleaseIterator(i32* %212)
  %214 = load i32*, i32** %15, align 8
  %215 = call i32 @dictRelease(i32* %214)
  br label %216

216:                                              ; preds = %211
  %217 = load i32, i32* %10, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %10, align 4
  br label %44

219:                                              ; preds = %44
  %220 = load i32, i32* %9, align 4
  ret i32 %220
}

declare dso_local %struct.TYPE_12__** @zcalloc(i32) #1

declare dso_local i32* @dictCreate(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @dictFind(i32*, i8*) #1

declare dso_local i8* @sdsdup(i8*) #1

declare dso_local i64 @dictGetVal(i32*) #1

declare dso_local i8* @sdsempty(...) #1

declare dso_local i8* @sdscatprintf(i8*, i8*, i8*) #1

declare dso_local i8* @sdscat(i8*, i8*) #1

declare dso_local i32 @dictReplace(i32*, i8*, i8*) #1

declare dso_local i32* @dictGetIterator(i32*) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i64 @dictGetKey(i32*) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i32 @listRewind(%struct.TYPE_13__*, i32*) #1

declare dso_local %struct.TYPE_10__* @listNext(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @dictRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
