; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/comctl32/extr_toolbar.c__CreateV5ActCtx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/comctl32/extr_toolbar.c__CreateV5ActCtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@__const._CreateV5ActCtx.ActCtx = private unnamed_addr constant %struct.TYPE_3__ { i32 4, i32* null }, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"GetModuleFileName failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i32] [i32 99, i32 111, i32 109, i32 99, i32 116, i32 108, i32 51, i32 50, i32 118, i32 53, i32 46, i32 109, i32 97, i32 110, i32 105, i32 102, i32 101, i32 115, i32 116, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_CreateV5ActCtx() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = bitcast %struct.TYPE_3__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_3__* @__const._CreateV5ActCtx.ActCtx to i8*), i64 16, i1 false)
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = call i32 @GetModuleFileNameW(i32* null, i32* %9, i32 %10)
  %12 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = call i32* @wcsrchr(i32* %9, i32 92)
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = call i32 @wcscpy(i32* %18, i8* bitcast ([20 x i32]* @.str.1 to i8*))
  br label %20

20:                                               ; preds = %16, %0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32* %9, i32** %21, align 8
  %22 = call i32 @CreateActCtxW(%struct.TYPE_3__* %1)
  %23 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %23)
  ret i32 %22
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ok(i32, i8*) #3

declare dso_local i32 @GetModuleFileNameW(i32*, i32*, i32) #3

declare dso_local i32* @wcsrchr(i32*, i32) #3

declare dso_local i32 @wcscpy(i32*, i8*) #3

declare dso_local i32 @CreateActCtxW(%struct.TYPE_3__*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
