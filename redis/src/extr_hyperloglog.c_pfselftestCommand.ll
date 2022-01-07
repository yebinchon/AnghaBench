; ModuleID = '/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_pfselftestCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_pfselftestCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.hllhdr = type { i64, i32 }
%struct.TYPE_7__ = type { %struct.hllhdr* }

@HLL_DENSE_SIZE = common dso_local global i64 0, align 8
@HLL_REGISTERS = common dso_local global i32 0, align 4
@HLL_TEST_CYCLES = common dso_local global i32 0, align 4
@HLL_REGISTER_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"TESTFAILED Register %d should be %d but is %d\00", align 1
@HLL_HDR_SIZE = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@HLL_SPARSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"TESTFAILED sparse encoding not used\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"TESTFAILED dense/sparse disagree\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"TESTFAILED Too big error. card:%llu abserr:%llu\00", align 1
@shared = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfselftestCommand(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.hllhdr*, align 8
  %7 = alloca %struct.hllhdr*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %19 = load i64, i64* @HLL_DENSE_SIZE, align 8
  %20 = call i64 @sdsnewlen(i32* null, i64 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = inttoptr i64 %21 to %struct.hllhdr*
  store %struct.hllhdr* %22, %struct.hllhdr** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  %23 = load i32, i32* @HLL_REGISTERS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %9, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %87, %1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @HLL_TEST_CYCLES, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %90

31:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %50, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @HLL_REGISTERS, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = call i32 (...) @rand()
  %38 = load i32, i32* @HLL_REGISTER_MAX, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %26, i64 %42
  store i32 %40, i32* %43, align 4
  %44 = load %struct.hllhdr*, %struct.hllhdr** %6, align 8
  %45 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @HLL_DENSE_SET_REGISTER(i32 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %36
  %51 = load i32, i32* %4, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %32

53:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %83, %53
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @HLL_REGISTERS, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %54
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.hllhdr*, %struct.hllhdr** %6, align 8
  %61 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @HLL_DENSE_GET_REGISTER(i32 %59, i32 %62, i32 %63)
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %4, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %26, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %65, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %58
  %72 = load i32*, i32** %2, align 8
  %73 = load i32, i32* %4, align 4
  %74 = zext i32 %73 to i64
  %75 = load i32, i32* %4, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %26, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = load i32, i32* %12, align 4
  %81 = call i32 (i32*, i8*, i64, i64, ...) @addReplyErrorFormat(i32* %72, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %74, i64 %79, i32 %80)
  br label %204

82:                                               ; preds = %58
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %4, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %54

86:                                               ; preds = %54
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %3, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %27

90:                                               ; preds = %27
  %91 = load %struct.hllhdr*, %struct.hllhdr** %6, align 8
  %92 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i64, i64* @HLL_DENSE_SIZE, align 8
  %95 = load i64, i64* @HLL_HDR_SIZE, align 8
  %96 = sub nsw i64 %94, %95
  %97 = call i32 @memset(i32 %93, i32 0, i64 %96)
  %98 = call %struct.TYPE_7__* (...) @createHLLObject()
  store %struct.TYPE_7__* %98, %struct.TYPE_7__** %8, align 8
  %99 = load i32, i32* @HLL_REGISTERS, align 4
  %100 = call double @sqrt(i32 %99)
  %101 = fdiv double 1.040000e+00, %100
  store double %101, double* %13, align 8
  store i32 1, i32* %14, align 4
  %102 = call i32 (...) @rand()
  %103 = call i32 (...) @rand()
  %104 = shl i32 %103, 32
  %105 = or i32 %102, %104
  store i32 %105, i32* %15, align 4
  store i32 1, i32* %3, align 4
  br label %106

106:                                              ; preds = %197, %90
  %107 = load i32, i32* %3, align 4
  %108 = icmp ule i32 %107, 10000000
  br i1 %108, label %109, label %200

109:                                              ; preds = %106
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* %15, align 4
  %112 = xor i32 %110, %111
  store i32 %112, i32* %16, align 4
  %113 = load %struct.hllhdr*, %struct.hllhdr** %6, align 8
  %114 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = bitcast i32* %16 to i8*
  %117 = call i32 @hllDenseAdd(i32 %115, i8* %116, i32 4)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %119 = bitcast i32* %16 to i8*
  %120 = call i32 @hllAdd(%struct.TYPE_7__* %118, i8* %119, i32 4)
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %142

124:                                              ; preds = %109
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 4
  %127 = sdiv i32 %126, 2
  %128 = icmp ult i32 %125, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %124
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load %struct.hllhdr*, %struct.hllhdr** %131, align 8
  store %struct.hllhdr* %132, %struct.hllhdr** %7, align 8
  %133 = load %struct.hllhdr*, %struct.hllhdr** %7, align 8
  %134 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @HLL_SPARSE, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %129
  %139 = load i32*, i32** %2, align 8
  %140 = call i32 @addReplyError(i32* %139, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %204

141:                                              ; preds = %129
  br label %142

142:                                              ; preds = %141, %124, %109
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* %14, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %142
  %147 = load %struct.hllhdr*, %struct.hllhdr** %6, align 8
  %148 = call i64 @hllCount(%struct.hllhdr* %147, i32* null)
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load %struct.hllhdr*, %struct.hllhdr** %150, align 8
  %152 = call i64 @hllCount(%struct.hllhdr* %151, i32* null)
  %153 = icmp ne i64 %148, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %146
  %155 = load i32*, i32** %2, align 8
  %156 = call i32 @addReplyError(i32* %155, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %204

157:                                              ; preds = %146, %142
  %158 = load i32, i32* %3, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %196

161:                                              ; preds = %157
  %162 = load i32, i32* %14, align 4
  %163 = load %struct.hllhdr*, %struct.hllhdr** %6, align 8
  %164 = call i64 @hllCount(%struct.hllhdr* %163, i32* null)
  %165 = trunc i64 %164 to i32
  %166 = sub i32 %162, %165
  store i32 %166, i32* %17, align 4
  %167 = load double, double* %13, align 8
  %168 = fmul double %167, 6.000000e+00
  %169 = load i32, i32* %14, align 4
  %170 = uitofp i32 %169 to double
  %171 = fmul double %168, %170
  %172 = call i32 @ceil(double %171)
  store i32 %172, i32* %18, align 4
  %173 = load i32, i32* %3, align 4
  %174 = icmp eq i32 %173, 10
  br i1 %174, label %175, label %176

175:                                              ; preds = %161
  store i32 1, i32* %18, align 4
  br label %176

176:                                              ; preds = %175, %161
  %177 = load i32, i32* %17, align 4
  %178 = icmp ult i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i32, i32* %17, align 4
  %181 = sub i32 0, %180
  store i32 %181, i32* %17, align 4
  br label %182

182:                                              ; preds = %179, %176
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* %18, align 4
  %185 = icmp ugt i32 %183, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %182
  %187 = load i32*, i32** %2, align 8
  %188 = load i32, i32* %14, align 4
  %189 = zext i32 %188 to i64
  %190 = load i32, i32* %17, align 4
  %191 = zext i32 %190 to i64
  %192 = call i32 (i32*, i8*, i64, i64, ...) @addReplyErrorFormat(i32* %187, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %189, i64 %191)
  br label %204

193:                                              ; preds = %182
  %194 = load i32, i32* %14, align 4
  %195 = mul i32 %194, 10
  store i32 %195, i32* %14, align 4
  br label %196

196:                                              ; preds = %193, %157
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %3, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %3, align 4
  br label %106

200:                                              ; preds = %106
  %201 = load i32*, i32** %2, align 8
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @shared, i32 0, i32 0), align 4
  %203 = call i32 @addReply(i32* %201, i32 %202)
  br label %204

204:                                              ; preds = %200, %186, %154, %138, %71
  %205 = load i64, i64* %5, align 8
  %206 = call i32 @sdsfree(i64 %205)
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %208 = icmp ne %struct.TYPE_7__* %207, null
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %211 = call i32 @decrRefCount(%struct.TYPE_7__* %210)
  br label %212

212:                                              ; preds = %209, %204
  %213 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %213)
  ret void
}

declare dso_local i64 @sdsnewlen(i32*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @rand(...) #1

declare dso_local i32 @HLL_DENSE_SET_REGISTER(i32, i32, i32) #1

declare dso_local i32 @HLL_DENSE_GET_REGISTER(i32, i32, i32) #1

declare dso_local i32 @addReplyErrorFormat(i32*, i8*, i64, i64, ...) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local %struct.TYPE_7__* @createHLLObject(...) #1

declare dso_local double @sqrt(i32) #1

declare dso_local i32 @hllDenseAdd(i32, i8*, i32) #1

declare dso_local i32 @hllAdd(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @addReplyError(i32*, i8*) #1

declare dso_local i64 @hllCount(%struct.hllhdr*, i32*) #1

declare dso_local i32 @ceil(double) #1

declare dso_local i32 @addReply(i32*, i32) #1

declare dso_local i32 @sdsfree(i64) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_7__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
