; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_log.c_lsmLogWrite.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_log.c_lsmLogWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32* }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_WRITE = common dso_local global i32 0, align 4
@LSM_DELETE = common dso_local global i32 0, align 4
@LSM_DRANGE = common dso_local global i32 0, align 4
@LSM_LOG_WRITE = common dso_local global i32 0, align 4
@LSM_LOG_DELETE = common dso_local global i32 0, align 4
@LSM_LOG_DRANGE = common dso_local global i32 0, align 4
@LSM_CKSUM_MAXDATA = common dso_local global i32 0, align 4
@LSM_LOG_WRITE_CKSUM = common dso_local global i32 0, align 4
@LSM_LOG_DELETE_CKSUM = common dso_local global i32 0, align 4
@LSM_LOG_DRANGE_CKSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmLogWrite(%struct.TYPE_8__* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* @LSM_OK, align 4
  store i32 %19, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @LSM_WRITE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @LSM_DELETE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @LSM_DRANGE, align 4
  %30 = icmp eq i32 %28, %29
  br label %31

31:                                               ; preds = %27, %23, %6
  %32 = phi i1 [ true, %23 ], [ true, %6 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* @LSM_LOG_WRITE, align 4
  %36 = load i32, i32* @LSM_WRITE, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* @LSM_LOG_DELETE, align 4
  %41 = load i32, i32* @LSM_DELETE, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* @LSM_LOG_DRANGE, align 4
  %46 = load i32, i32* @LSM_DRANGE, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @LSM_LOG_DELETE, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = icmp eq i32 %53, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %31
  %65 = load i32, i32* @LSM_OK, align 4
  store i32 %65, i32* %7, align 4
  br label %240

66:                                               ; preds = %31
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %15, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @lsmVarintLen32(i32 %70)
  %72 = add nsw i32 1, %71
  %73 = add nsw i32 %72, 8
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @LSM_LOG_DELETE, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %66
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @lsmVarintLen32(i32 %80)
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %16, align 4
  br label %86

86:                                               ; preds = %79, %66
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @jumpIfRequired(%struct.TYPE_8__* %87, %struct.TYPE_9__* %88, i32 %89, i32* %17)
  store i32 %90, i32* %14, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* @LSM_CKSUM_MAXDATA, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  store i32 1, i32* %17, align 4
  br label %100

100:                                              ; preds = %99, %86
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* @LSM_OK, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @lsmStringExtend(%struct.TYPE_10__* %106, i32 %107)
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %104, %100
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @LSM_OK, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %238

113:                                              ; preds = %109
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %117, i64 %122
  store i32* %123, i32** %18, align 8
  %124 = load i32, i32* @LSM_LOG_WRITE_CKSUM, align 4
  %125 = load i32, i32* @LSM_LOG_WRITE, align 4
  %126 = or i32 %125, 1
  %127 = icmp eq i32 %124, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  %130 = load i32, i32* @LSM_LOG_DELETE_CKSUM, align 4
  %131 = load i32, i32* @LSM_LOG_DELETE, align 4
  %132 = or i32 %131, 1
  %133 = icmp eq i32 %130, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load i32, i32* @LSM_LOG_DRANGE_CKSUM, align 4
  %137 = load i32, i32* @LSM_LOG_DRANGE, align 4
  %138 = or i32 %137, 1
  %139 = icmp eq i32 %136, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %17, align 4
  %144 = or i32 %142, %143
  %145 = load i32*, i32** %18, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %18, align 8
  store i32 %144, i32* %145, align 4
  %147 = load i32*, i32** %18, align 8
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @lsmVarintPut32(i32* %147, i32 %148)
  %150 = load i32*, i32** %18, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32* %152, i32** %18, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @LSM_LOG_DELETE, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %113
  %157 = load i32*, i32** %18, align 8
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @lsmVarintPut32(i32* %157, i32 %158)
  %160 = load i32*, i32** %18, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32* %162, i32** %18, align 8
  br label %163

163:                                              ; preds = %156, %113
  %164 = load i32, i32* %17, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %192

166:                                              ; preds = %163
  %167 = load i32*, i32** %18, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = ptrtoint i32* %167 to i64
  %173 = ptrtoint i32* %171 to i64
  %174 = sub i64 %172, %173
  %175 = sdiv exact i64 %174, 4
  %176 = trunc i64 %175 to i32
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  store i32 %176, i32* %179, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %181 = call i32 @logCksumAndFlush(%struct.TYPE_8__* %180)
  store i32 %181, i32* %14, align 4
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %185, i64 %190
  store i32* %191, i32** %18, align 8
  br label %192

192:                                              ; preds = %166, %163
  %193 = load i32*, i32** %18, align 8
  %194 = load i8*, i8** %10, align 8
  %195 = load i32, i32* %11, align 4
  %196 = call i32 @memcpy(i32* %193, i8* %194, i32 %195)
  %197 = load i32, i32* %11, align 4
  %198 = load i32*, i32** %18, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32* %200, i32** %18, align 8
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* @LSM_LOG_DELETE, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %213

204:                                              ; preds = %192
  %205 = load i32*, i32** %18, align 8
  %206 = load i8*, i8** %12, align 8
  %207 = load i32, i32* %13, align 4
  %208 = call i32 @memcpy(i32* %205, i8* %206, i32 %207)
  %209 = load i32, i32* %13, align 4
  %210 = load i32*, i32** %18, align 8
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  store i32* %212, i32** %18, align 8
  br label %213

213:                                              ; preds = %204, %192
  %214 = load i32*, i32** %18, align 8
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = ptrtoint i32* %214 to i64
  %220 = ptrtoint i32* %218 to i64
  %221 = sub i64 %219, %220
  %222 = sdiv exact i64 %221, 4
  %223 = trunc i64 %222 to i32
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  store i32 %223, i32* %226, align 8
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp sle i32 %230, %234
  %236 = zext i1 %235 to i32
  %237 = call i32 @assert(i32 %236)
  br label %238

238:                                              ; preds = %213, %109
  %239 = load i32, i32* %14, align 4
  store i32 %239, i32* %7, align 4
  br label %240

240:                                              ; preds = %238, %64
  %241 = load i32, i32* %7, align 4
  ret i32 %241
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lsmVarintLen32(i32) #1

declare dso_local i32 @jumpIfRequired(%struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @lsmStringExtend(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @lsmVarintPut32(i32*, i32) #1

declare dso_local i32 @logCksumAndFlush(%struct.TYPE_8__*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
