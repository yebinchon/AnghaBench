; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_usrmarshal.c_test_marshal_HGLOBAL.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_usrmarshal.c_test_marshal_HGLOBAL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MSHCTX_LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Size should be 8, instead of %d\0A\00", align 1
@WDT_REMOTE_CALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Context should be WDT_REMOTE_CALL instead of 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"buffer+4 should be HGLOBAL\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Didn't unmarshal properly\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%d: got size %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"buffer+0x4 should be HGLOBAL\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"%d: buffer+0x8 %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"buffer+0xc should be HGLOBAL\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"%d: buffer+0x10 %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"buffer+0x%x should be %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_marshal_HGLOBAL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_marshal_HGLOBAL() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* null, i32** %7, align 8
  %13 = load i32, i32* @MSHCTX_LOCAL, align 4
  %14 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* null, i32 0, i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %16 = call i32 @HGLOBAL_UserSize(i32* %15, i32 0, i32** %7)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %31, label %19

19:                                               ; preds = %0
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 12
  %22 = zext i1 %21 to i32
  %23 = call i64 @broken(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 16
  %28 = zext i1 %27 to i32
  %29 = call i64 @broken(i32 %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %25, %19, %0
  %32 = phi i1 [ true, %19 ], [ true, %0 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = call i32 (...) @GetProcessHeap()
  %37 = load i32, i32* %5, align 4
  %38 = call i8* @HeapAlloc(i32 %36, i32 0, i32 %37)
  store i8* %38, i8** %4, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @MSHCTX_LOCAL, align 4
  %42 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* %39, i32 %40, i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @HGLOBAL_UserMarshal(i32* %43, i8* %44, i32** %7)
  %46 = load i8*, i8** %4, align 8
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @WDT_REMOTE_CALL, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i8*, i8** %9, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @MSHCTX_LOCAL, align 4
  %68 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* %65, i32 %66, i32 %67)
  store i32* null, i32** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @HGLOBAL_UserUnmarshal(i32* %69, i8* %70, i32** %8)
  %72 = load i32*, i32** %8, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = icmp eq i32* %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %77 = call i32 (...) @GetProcessHeap()
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @HeapFree(i32 %77, i32 0, i8* %78)
  %80 = load i32, i32* @MSHCTX_LOCAL, align 4
  %81 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* null, i32 0, i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %83 = call i32 @HGLOBAL_UserFree(i32* %82, i32** %8)
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %257, %31
  %85 = load i32, i32* %6, align 4
  %86 = icmp sle i32 %85, 17
  br i1 %86, label %87, label %260

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = call i32* @GlobalAlloc(i32 0, i32 %88)
  store i32* %89, i32** %7, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = call i8* @GlobalLock(i32* %90)
  store i8* %91, i8** %4, align 8
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %103, %87
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = trunc i32 %97 to i8
  %99 = load i8*, i8** %4, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  store i8 %98, i8* %102, align 1
  br label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %92

106:                                              ; preds = %92
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @GlobalUnlock(i32* %107)
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @GlobalSize(i32* %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = add i64 %112, 20
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* @MSHCTX_LOCAL, align 4
  %116 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* null, i32 0, i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %118 = call i32 @HGLOBAL_UserSize(i32* %117, i32 0, i32** %7)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %138, label %122

122:                                              ; preds = %106
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 4
  %126 = icmp eq i32 %123, %125
  %127 = zext i1 %126 to i32
  %128 = call i64 @broken(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %122
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 8
  %134 = icmp eq i32 %131, %133
  %135 = zext i1 %134 to i32
  %136 = call i64 @broken(i32 %135)
  %137 = icmp ne i64 %136, 0
  br label %138

138:                                              ; preds = %130, %122, %106
  %139 = phi i1 [ true, %122 ], [ true, %106 ], [ %137, %130 ]
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %141, i32 %142)
  %144 = call i32 (...) @GetProcessHeap()
  %145 = load i32, i32* %5, align 4
  %146 = call i8* @HeapAlloc(i32 %144, i32 0, i32 %145)
  store i8* %146, i8** %4, align 8
  %147 = load i8*, i8** %4, align 8
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @MSHCTX_LOCAL, align 4
  %150 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* %147, i32 %148, i32 %149)
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %152 = load i8*, i8** %4, align 8
  %153 = call i32 @HGLOBAL_UserMarshal(i32* %151, i8* %152, i32** %7)
  %154 = load i8*, i8** %4, align 8
  store i8* %154, i8** %9, align 8
  %155 = load i8*, i8** %9, align 8
  %156 = bitcast i8* %155 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @WDT_REMOTE_CALL, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = load i8*, i8** %9, align 8
  %162 = bitcast i8* %161 to i32*
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  %165 = load i8*, i8** %9, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 4
  store i8* %166, i8** %9, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = bitcast i8* %167 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %7, align 8
  %171 = ptrtoint i32* %170 to i64
  %172 = trunc i64 %171 to i32
  %173 = icmp eq i32 %169, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %176 = load i8*, i8** %9, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 4
  store i8* %177, i8** %9, align 8
  %178 = load i8*, i8** %9, align 8
  %179 = bitcast i8* %178 to i32*
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %11, align 4
  %182 = icmp eq i32 %180, %181
  %183 = zext i1 %182 to i32
  %184 = load i32, i32* %6, align 4
  %185 = load i8*, i8** %9, align 8
  %186 = bitcast i8* %185 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %184, i32 %187)
  %189 = load i8*, i8** %9, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 4
  store i8* %190, i8** %9, align 8
  %191 = load i8*, i8** %9, align 8
  %192 = bitcast i8* %191 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %7, align 8
  %195 = ptrtoint i32* %194 to i64
  %196 = trunc i64 %195 to i32
  %197 = icmp eq i32 %193, %196
  %198 = zext i1 %197 to i32
  %199 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %200 = load i8*, i8** %9, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 4
  store i8* %201, i8** %9, align 8
  %202 = load i8*, i8** %9, align 8
  %203 = bitcast i8* %202 to i32*
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %11, align 4
  %206 = icmp eq i32 %204, %205
  %207 = zext i1 %206 to i32
  %208 = load i32, i32* %6, align 4
  %209 = load i8*, i8** %9, align 8
  %210 = bitcast i8* %209 to i32*
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (i32, i8*, ...) @ok(i32 %207, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %208, i32 %211)
  %213 = load i8*, i8** %9, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 4
  store i8* %214, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %215

215:                                              ; preds = %233, %138
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* %6, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %236

219:                                              ; preds = %215
  %220 = load i8*, i8** %9, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = load i32, i32* %10, align 4
  %227 = icmp eq i32 %225, %226
  %228 = zext i1 %227 to i32
  %229 = load i32, i32* %10, align 4
  %230 = add nsw i32 16, %229
  %231 = load i32, i32* %10, align 4
  %232 = call i32 (i32, i8*, ...) @ok(i32 %228, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %219
  %234 = load i32, i32* %10, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %10, align 4
  br label %215

236:                                              ; preds = %215
  %237 = load i8*, i8** %4, align 8
  %238 = load i32, i32* %5, align 4
  %239 = load i32, i32* @MSHCTX_LOCAL, align 4
  %240 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* %237, i32 %238, i32 %239)
  store i32* null, i32** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %242 = load i8*, i8** %4, align 8
  %243 = call i32 @HGLOBAL_UserUnmarshal(i32* %241, i8* %242, i32** %8)
  %244 = load i32*, i32** %8, align 8
  %245 = icmp ne i32* %244, null
  %246 = zext i1 %245 to i32
  %247 = call i32 (i32, i8*, ...) @ok(i32 %246, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %248 = call i32 (...) @GetProcessHeap()
  %249 = load i8*, i8** %4, align 8
  %250 = call i32 @HeapFree(i32 %248, i32 0, i8* %249)
  %251 = load i32, i32* @MSHCTX_LOCAL, align 4
  %252 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* null, i32 0, i32 %251)
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %254 = call i32 @HGLOBAL_UserFree(i32* %253, i32** %8)
  %255 = load i32*, i32** %7, align 8
  %256 = call i32 @GlobalFree(i32* %255)
  br label %257

257:                                              ; preds = %236
  %258 = load i32, i32* %6, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %6, align 4
  br label %84

260:                                              ; preds = %84
  ret void
}

declare dso_local i32 @init_user_marshal_cb(%struct.TYPE_3__*, i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @HGLOBAL_UserSize(i32*, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HGLOBAL_UserMarshal(i32*, i8*, i32**) #1

declare dso_local i32 @HGLOBAL_UserUnmarshal(i32*, i8*, i32**) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @HGLOBAL_UserFree(i32*, i32**) #1

declare dso_local i32* @GlobalAlloc(i32, i32) #1

declare dso_local i8* @GlobalLock(i32*) #1

declare dso_local i32 @GlobalUnlock(i32*) #1

declare dso_local i32 @GlobalSize(i32*) #1

declare dso_local i32 @GlobalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
