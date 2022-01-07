; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/twain_32/extr_dsm.c_test_physical.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/twain_32/extr_dsm.c_test_physical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i8*, i8* }

@TWON_DONTCARE16 = common dso_local global i8* null, align 8
@DG_CONTROL = common dso_local global i32 0, align 4
@DAT_CAPABILITY = common dso_local global i32 0, align 4
@MSG_QUERYSUPPORT = common dso_local global i32 0, align 4
@TWRC_SUCCESS = common dso_local global i8* null, align 8
@TWCC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Error [rc %d|cc %d] doing MSG_QUERYSUPPORT for type 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Returned cap.hContainer invalid for QuerySupport on type 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Error:  minimum support 0x%x for type 0x%x, got 0x%x\0A\00", align 1
@TWQC_GETCURRENT = common dso_local global i32 0, align 4
@MSG_GETCURRENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Error [rc %d|cc %d] doing MSG_GETCURRENT for type 0x%x\0A\00", align 1
@TWTY_FIX32 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [58 x i8] c"GETCURRENT for PHYSICALXXX is not type FIX32, is type %d\0A\00", align 1
@TWQC_GETDEFAULT = common dso_local global i32 0, align 4
@MSG_GETDEFAULT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [56 x i8] c"Error [rc %d|cc %d] doing MSG_GETDEFAULT for type 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"GETDEFAULT for PHYSICALXXX is not type FIX32, is type %d\0A\00", align 1
@TWQC_GET = common dso_local global i32 0, align 4
@MSG_GET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"Error [rc %d|cc %d] doing MSG_GET for type 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"GET for PHYSICALXXX is not type FIX32, is type %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"GET for Physical type 0x%x returns 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, i32)* @test_physical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_physical(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = call i32 @memset(%struct.TYPE_7__* %11, i32 0, i32 24)
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = load i8*, i8** @TWON_DONTCARE16, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @DG_CONTROL, align 4
  %23 = load i32, i32* @DAT_CAPABILITY, align 4
  %24 = load i32, i32* @MSG_QUERYSUPPORT, align 4
  %25 = call i8* @pDSM_Entry(i32* %20, i32* %21, i32 %22, i32 %23, i32 %24, %struct.TYPE_7__* %11)
  store i8* %25, i8** %9, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @get_condition_code(i32* %26, i32* %27, %struct.TYPE_6__* %10)
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** @TWRC_SUCCESS, align 8
  %31 = icmp eq i8* %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TWCC_SUCCESS, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %32, %4
  %38 = phi i1 [ false, %4 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 (i32, i8*, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %40, i64 %42, i8* %43)
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** @TWRC_SUCCESS, align 8
  %47 = icmp ne i8* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %228

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @get_onevalue(i32 %51, i32* %14, i8** null)
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 (i32, i8*, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 (i32, i8*, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %63, i8* %64, i32 %65)
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @TWQC_GETCURRENT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %119

71:                                               ; preds = %49
  %72 = call i32 @memset(%struct.TYPE_7__* %11, i32 0, i32 24)
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i8* %73, i8** %74, align 8
  %75 = load i8*, i8** @TWON_DONTCARE16, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i8* %75, i8** %76, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* @DG_CONTROL, align 4
  %80 = load i32, i32* @DAT_CAPABILITY, align 4
  %81 = load i32, i32* @MSG_GETCURRENT, align 4
  %82 = call i8* @pDSM_Entry(i32* %77, i32* %78, i32 %79, i32 %80, i32 %81, %struct.TYPE_7__* %11)
  store i8* %82, i8** %9, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @get_condition_code(i32* %83, i32* %84, %struct.TYPE_6__* %10)
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** @TWRC_SUCCESS, align 8
  %88 = icmp eq i8* %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %71
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @TWCC_SUCCESS, align 8
  %93 = icmp eq i64 %91, %92
  br label %94

94:                                               ; preds = %89, %71
  %95 = phi i1 [ false, %71 ], [ %93, %89 ]
  %96 = zext i1 %95 to i32
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 (i32, i8*, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %97, i64 %99, i8* %100)
  %102 = load i8*, i8** %9, align 8
  %103 = load i8*, i8** @TWRC_SUCCESS, align 8
  %104 = icmp eq i8* %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %94
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @get_onevalue(i32 %107, i32* %12, i8** %13)
  %109 = load i8*, i8** %13, align 8
  %110 = load i8*, i8** @TWTY_FIX32, align 8
  %111 = icmp eq i8* %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i8*, i8** %13, align 8
  %114 = call i32 (i32, i8*, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i8* %113)
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @GlobalFree(i32 %116)
  br label %118

118:                                              ; preds = %105, %94
  br label %119

119:                                              ; preds = %118, %49
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @TWQC_GETDEFAULT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %172

124:                                              ; preds = %119
  %125 = call i32 @memset(%struct.TYPE_7__* %11, i32 0, i32 24)
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i8* %126, i8** %127, align 8
  %128 = load i8*, i8** @TWON_DONTCARE16, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i8* %128, i8** %129, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* @DG_CONTROL, align 4
  %133 = load i32, i32* @DAT_CAPABILITY, align 4
  %134 = load i32, i32* @MSG_GETDEFAULT, align 4
  %135 = call i8* @pDSM_Entry(i32* %130, i32* %131, i32 %132, i32 %133, i32 %134, %struct.TYPE_7__* %11)
  store i8* %135, i8** %9, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = call i32 @get_condition_code(i32* %136, i32* %137, %struct.TYPE_6__* %10)
  %139 = load i8*, i8** %9, align 8
  %140 = load i8*, i8** @TWRC_SUCCESS, align 8
  %141 = icmp eq i8* %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %124
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @TWCC_SUCCESS, align 8
  %146 = icmp eq i64 %144, %145
  br label %147

147:                                              ; preds = %142, %124
  %148 = phi i1 [ false, %124 ], [ %146, %142 ]
  %149 = zext i1 %148 to i32
  %150 = load i8*, i8** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i8*, i8** %7, align 8
  %154 = call i32 (i32, i8*, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i8* %150, i64 %152, i8* %153)
  %155 = load i8*, i8** %9, align 8
  %156 = load i8*, i8** @TWRC_SUCCESS, align 8
  %157 = icmp eq i8* %155, %156
  br i1 %157, label %158, label %171

158:                                              ; preds = %147
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @get_onevalue(i32 %160, i32* %12, i8** %13)
  %162 = load i8*, i8** %13, align 8
  %163 = load i8*, i8** @TWTY_FIX32, align 8
  %164 = icmp eq i8* %162, %163
  %165 = zext i1 %164 to i32
  %166 = load i8*, i8** %13, align 8
  %167 = call i32 (i32, i8*, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i8* %166)
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @GlobalFree(i32 %169)
  br label %171

171:                                              ; preds = %158, %147
  br label %172

172:                                              ; preds = %171, %119
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* @TWQC_GET, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %228

177:                                              ; preds = %172
  %178 = call i32 @memset(%struct.TYPE_7__* %11, i32 0, i32 24)
  %179 = load i8*, i8** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i8* %179, i8** %180, align 8
  %181 = load i8*, i8** @TWON_DONTCARE16, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i8* %181, i8** %182, align 8
  %183 = load i32*, i32** %5, align 8
  %184 = load i32*, i32** %6, align 8
  %185 = load i32, i32* @DG_CONTROL, align 4
  %186 = load i32, i32* @DAT_CAPABILITY, align 4
  %187 = load i32, i32* @MSG_GET, align 4
  %188 = call i8* @pDSM_Entry(i32* %183, i32* %184, i32 %185, i32 %186, i32 %187, %struct.TYPE_7__* %11)
  store i8* %188, i8** %9, align 8
  %189 = load i32*, i32** %5, align 8
  %190 = load i32*, i32** %6, align 8
  %191 = call i32 @get_condition_code(i32* %189, i32* %190, %struct.TYPE_6__* %10)
  %192 = load i8*, i8** %9, align 8
  %193 = load i8*, i8** @TWRC_SUCCESS, align 8
  %194 = icmp eq i8* %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %177
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @TWCC_SUCCESS, align 8
  %199 = icmp eq i64 %197, %198
  br label %200

200:                                              ; preds = %195, %177
  %201 = phi i1 [ false, %177 ], [ %199, %195 ]
  %202 = zext i1 %201 to i32
  %203 = load i8*, i8** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i8*, i8** %7, align 8
  %207 = call i32 (i32, i8*, i8*, ...) @ok(i32 %202, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* %203, i64 %205, i8* %206)
  %208 = load i8*, i8** %9, align 8
  %209 = load i8*, i8** @TWRC_SUCCESS, align 8
  %210 = icmp eq i8* %208, %209
  br i1 %210, label %211, label %227

211:                                              ; preds = %200
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @get_onevalue(i32 %213, i32* %12, i8** %13)
  %215 = load i8*, i8** %13, align 8
  %216 = load i8*, i8** @TWTY_FIX32, align 8
  %217 = icmp eq i8* %215, %216
  %218 = zext i1 %217 to i32
  %219 = load i8*, i8** %13, align 8
  %220 = call i32 (i32, i8*, i8*, ...) @ok(i32 %218, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i8* %219)
  %221 = load i8*, i8** %7, align 8
  %222 = load i32, i32* %12, align 4
  %223 = call i32 @trace(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8* %221, i32 %222)
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @GlobalFree(i32 %225)
  br label %227

227:                                              ; preds = %211, %200
  br label %228

228:                                              ; preds = %48, %227, %172
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i8* @pDSM_Entry(i32*, i32*, i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @get_condition_code(i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @ok(i32, i8*, i8*, ...) #1

declare dso_local i32 @get_onevalue(i32, i32*, i8**) #1

declare dso_local i32 @GlobalFree(i32) #1

declare dso_local i32 @trace(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
