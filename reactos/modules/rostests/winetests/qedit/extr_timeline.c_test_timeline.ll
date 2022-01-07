; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qedit/extr_timeline.c_test_timeline.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qedit/extr_timeline.c_test_timeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_AMTimeline = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IAMTimeline = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32* null, align 8
@REGDB_E_CLASSNOTREG = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"CoCreateInstance failed: %08x\0A\00", align 1
@IID_IAMTimelineObj = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Expected E_POINTER got %08x\0A\00", align 1
@E_NOINTERFACE = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Expected E_NOINTERFACE got %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Expected NULL got %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"CreateEmptyNode failed: %08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Expected E_INVALIDARG got %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Expected %p got %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"GetTimelineType failed: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Expected TIMELINE_MAJOR_TYPE_COMPOSITE got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"SetTimelineType failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_timeline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_timeline() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %4, align 8
  %7 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %8 = bitcast i32** %2 to i8**
  %9 = call i32* @CoCreateInstance(i32* @CLSID_AMTimeline, i32* null, i32 %7, i32* @IID_IAMTimeline, i8** %8)
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = load i32*, i32** @S_OK, align 8
  %12 = icmp eq i32* %10, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %0
  %14 = load i32*, i32** %1, align 8
  %15 = load i32*, i32** @REGDB_E_CLASSNOTREG, align 8
  %16 = icmp eq i32* %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @broken(i32 %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %13, %0
  %21 = phi i1 [ true, %0 ], [ %19, %13 ]
  %22 = zext i1 %21 to i32
  %23 = load i32*, i32** %1, align 8
  %24 = ptrtoint i32* %23 to i32
  %25 = call i32 (i32, i8*, i32, ...) @ok(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %236

29:                                               ; preds = %20
  %30 = load i32*, i32** %2, align 8
  %31 = call i32* @IAMTimeline_QueryInterface(i32* %30, i32* @IID_IAMTimelineObj, i8** null)
  store i32* %31, i32** %1, align 8
  %32 = load i32*, i32** %1, align 8
  %33 = load i32*, i32** @E_POINTER, align 8
  %34 = icmp eq i32* %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32*, i32** %1, align 8
  %37 = ptrtoint i32* %36 to i32
  %38 = call i32 (i32, i8*, i32, ...) @ok(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = bitcast i32** %4 to i8**
  %41 = call i32* @IAMTimeline_QueryInterface(i32* %39, i32* @IID_IAMTimelineObj, i8** %40)
  store i32* %41, i32** %1, align 8
  %42 = load i32*, i32** %1, align 8
  %43 = load i32*, i32** @E_NOINTERFACE, align 8
  %44 = icmp eq i32* %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32*, i32** %1, align 8
  %47 = ptrtoint i32* %46 to i32
  %48 = call i32 (i32, i8*, i32, ...) @ok(i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = icmp ne i32* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load i32*, i32** %4, align 8
  %54 = ptrtoint i32* %53 to i32
  %55 = call i32 (i32, i8*, i32, ...) @ok(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %2, align 8
  %57 = call i32* @IAMTimeline_CreateEmptyNode(i32* %56, i32** null, i32 0)
  store i32* %57, i32** %1, align 8
  %58 = load i32*, i32** %1, align 8
  %59 = load i32*, i32** @E_POINTER, align 8
  %60 = icmp eq i32* %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i32*, i32** %1, align 8
  %63 = ptrtoint i32* %62 to i32
  %64 = call i32 (i32, i8*, i32, ...) @ok(i32 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32* @IAMTimeline_CreateEmptyNode(i32* %65, i32** null, i32 133)
  store i32* %66, i32** %1, align 8
  %67 = load i32*, i32** %1, align 8
  %68 = load i32*, i32** @E_POINTER, align 8
  %69 = icmp eq i32* %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i32*, i32** %1, align 8
  %72 = ptrtoint i32* %71 to i32
  %73 = call i32 (i32, i8*, i32, ...) @ok(i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %111, %29
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 256
  br i1 %76, label %77, label %114

77:                                               ; preds = %74
  store i32* %5, i32** %4, align 8
  %78 = load i32*, i32** %2, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32* @IAMTimeline_CreateEmptyNode(i32* %78, i32** %4, i32 %79)
  store i32* %80, i32** %1, align 8
  %81 = load i32, i32* %6, align 4
  switch i32 %81, label %96 [
    i32 133, label %82
    i32 129, label %82
    i32 130, label %82
    i32 128, label %82
    i32 132, label %82
    i32 131, label %82
  ]

82:                                               ; preds = %77, %77, %77, %77, %77, %77
  %83 = load i32*, i32** %1, align 8
  %84 = load i32*, i32** @S_OK, align 8
  %85 = icmp eq i32* %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i32*, i32** %1, align 8
  %88 = ptrtoint i32* %87 to i32
  %89 = call i32 (i32, i8*, i32, ...) @ok(i32 %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = load i32*, i32** %4, align 8
  %91 = icmp ne i32* %90, %5
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @IAMTimelineObj_Release(i32* %93)
  br label %95

95:                                               ; preds = %92, %82
  br label %110

96:                                               ; preds = %77
  %97 = load i32*, i32** %1, align 8
  %98 = load i32*, i32** @E_INVALIDARG, align 8
  %99 = icmp eq i32* %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32*, i32** %1, align 8
  %102 = ptrtoint i32* %101 to i32
  %103 = call i32 (i32, i8*, i32, ...) @ok(i32 %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = load i32*, i32** %4, align 8
  %105 = icmp eq i32* %104, %5
  %106 = zext i1 %105 to i32
  %107 = ptrtoint i32* %5 to i32
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 (i32, i8*, i32, ...) @ok(i32 %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %107, i32* %108)
  br label %110

110:                                              ; preds = %96, %95
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %74

114:                                              ; preds = %74
  store i32* null, i32** %4, align 8
  %115 = load i32*, i32** %2, align 8
  %116 = call i32* @IAMTimeline_CreateEmptyNode(i32* %115, i32** %4, i32 133)
  store i32* %116, i32** %1, align 8
  %117 = load i32*, i32** %1, align 8
  %118 = load i32*, i32** @S_OK, align 8
  %119 = icmp eq i32* %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i32*, i32** %1, align 8
  %122 = ptrtoint i32* %121 to i32
  %123 = call i32 (i32, i8*, i32, ...) @ok(i32 %120, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  %124 = load i32*, i32** %4, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %114
  br label %236

127:                                              ; preds = %114
  %128 = load i32*, i32** %4, align 8
  %129 = call i32* @IAMTimelineObj_QueryInterface(i32* %128, i32* @IID_IAMTimeline, i8** null)
  store i32* %129, i32** %1, align 8
  %130 = load i32*, i32** %1, align 8
  %131 = load i32*, i32** @E_POINTER, align 8
  %132 = icmp eq i32* %130, %131
  %133 = zext i1 %132 to i32
  %134 = load i32*, i32** %1, align 8
  %135 = ptrtoint i32* %134 to i32
  %136 = call i32 (i32, i8*, i32, ...) @ok(i32 %133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  %137 = load i32*, i32** %4, align 8
  %138 = bitcast i32** %3 to i8**
  %139 = call i32* @IAMTimelineObj_QueryInterface(i32* %137, i32* @IID_IAMTimeline, i8** %138)
  store i32* %139, i32** %1, align 8
  %140 = load i32*, i32** %1, align 8
  %141 = load i32*, i32** @E_NOINTERFACE, align 8
  %142 = icmp eq i32* %140, %141
  %143 = zext i1 %142 to i32
  %144 = load i32*, i32** %1, align 8
  %145 = ptrtoint i32* %144 to i32
  %146 = call i32 (i32, i8*, i32, ...) @ok(i32 %143, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  %147 = load i32*, i32** %3, align 8
  %148 = icmp ne i32* %147, null
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = load i32*, i32** %3, align 8
  %152 = ptrtoint i32* %151 to i32
  %153 = call i32 (i32, i8*, i32, ...) @ok(i32 %150, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %152)
  %154 = load i32*, i32** %4, align 8
  %155 = call i32* @IAMTimelineObj_GetTimelineType(i32* %154, i32* null)
  store i32* %155, i32** %1, align 8
  %156 = load i32*, i32** %1, align 8
  %157 = load i32*, i32** @E_POINTER, align 8
  %158 = icmp eq i32* %156, %157
  %159 = zext i1 %158 to i32
  %160 = load i32*, i32** %1, align 8
  %161 = ptrtoint i32* %160 to i32
  %162 = call i32 (i32, i8*, i32, ...) @ok(i32 %159, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %161)
  %163 = load i32*, i32** %4, align 8
  %164 = call i32* @IAMTimelineObj_GetTimelineType(i32* %163, i32* %6)
  store i32* %164, i32** %1, align 8
  %165 = load i32*, i32** %1, align 8
  %166 = load i32*, i32** @S_OK, align 8
  %167 = icmp eq i32* %165, %166
  %168 = zext i1 %167 to i32
  %169 = load i32*, i32** %1, align 8
  %170 = ptrtoint i32* %169 to i32
  %171 = call i32 (i32, i8*, i32, ...) @ok(i32 %168, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* %6, align 4
  %173 = icmp eq i32 %172, 133
  %174 = zext i1 %173 to i32
  %175 = load i32, i32* %6, align 4
  %176 = call i32 (i32, i8*, i32, ...) @ok(i32 %174, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %175)
  store i32 0, i32* %6, align 4
  br label %177

177:                                              ; preds = %203, %127
  %178 = load i32, i32* %6, align 4
  %179 = icmp slt i32 %178, 256
  br i1 %179, label %180, label %206

180:                                              ; preds = %177
  %181 = load i32*, i32** %4, align 8
  %182 = load i32, i32* %6, align 4
  %183 = call i32* @IAMTimelineObj_SetTimelineType(i32* %181, i32 %182)
  store i32* %183, i32** %1, align 8
  %184 = load i32, i32* %6, align 4
  %185 = icmp eq i32 %184, 133
  br i1 %185, label %186, label %194

186:                                              ; preds = %180
  %187 = load i32*, i32** %1, align 8
  %188 = load i32*, i32** @S_OK, align 8
  %189 = icmp eq i32* %187, %188
  %190 = zext i1 %189 to i32
  %191 = load i32*, i32** %1, align 8
  %192 = ptrtoint i32* %191 to i32
  %193 = call i32 (i32, i8*, i32, ...) @ok(i32 %190, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %192)
  br label %202

194:                                              ; preds = %180
  %195 = load i32*, i32** %1, align 8
  %196 = load i32*, i32** @E_INVALIDARG, align 8
  %197 = icmp eq i32* %195, %196
  %198 = zext i1 %197 to i32
  %199 = load i32*, i32** %1, align 8
  %200 = ptrtoint i32* %199 to i32
  %201 = call i32 (i32, i8*, i32, ...) @ok(i32 %198, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %194, %186
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %6, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %6, align 4
  br label %177

206:                                              ; preds = %177
  %207 = load i32*, i32** %4, align 8
  %208 = call i32* @IAMTimelineObj_GetTimelineNoRef(i32* %207, i32** null)
  store i32* %208, i32** %1, align 8
  %209 = load i32*, i32** %1, align 8
  %210 = load i32*, i32** @E_POINTER, align 8
  %211 = icmp eq i32* %209, %210
  %212 = zext i1 %211 to i32
  %213 = load i32*, i32** %1, align 8
  %214 = ptrtoint i32* %213 to i32
  %215 = call i32 (i32, i8*, i32, ...) @ok(i32 %212, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %214)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %216 = load i32*, i32** %4, align 8
  %217 = call i32* @IAMTimelineObj_GetTimelineNoRef(i32* %216, i32** %3)
  store i32* %217, i32** %1, align 8
  %218 = load i32*, i32** %1, align 8
  %219 = load i32*, i32** @E_NOINTERFACE, align 8
  %220 = icmp eq i32* %218, %219
  %221 = zext i1 %220 to i32
  %222 = load i32*, i32** %1, align 8
  %223 = ptrtoint i32* %222 to i32
  %224 = call i32 (i32, i8*, i32, ...) @ok(i32 %221, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %223)
  %225 = load i32*, i32** %3, align 8
  %226 = icmp ne i32* %225, null
  %227 = xor i1 %226, true
  %228 = zext i1 %227 to i32
  %229 = load i32*, i32** %3, align 8
  %230 = ptrtoint i32* %229 to i32
  %231 = call i32 (i32, i8*, i32, ...) @ok(i32 %228, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %230)
  %232 = load i32*, i32** %4, align 8
  %233 = call i32 @IAMTimelineObj_Release(i32* %232)
  %234 = load i32*, i32** %2, align 8
  %235 = call i32 @IAMTimeline_Release(i32* %234)
  br label %236

236:                                              ; preds = %206, %126, %28
  ret void
}

declare dso_local i32* @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32* @IAMTimeline_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32* @IAMTimeline_CreateEmptyNode(i32*, i32**, i32) #1

declare dso_local i32 @IAMTimelineObj_Release(i32*) #1

declare dso_local i32* @IAMTimelineObj_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32* @IAMTimelineObj_GetTimelineType(i32*, i32*) #1

declare dso_local i32* @IAMTimelineObj_SetTimelineType(i32*, i32) #1

declare dso_local i32* @IAMTimelineObj_GetTimelineNoRef(i32*, i32**) #1

declare dso_local i32 @IAMTimeline_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
