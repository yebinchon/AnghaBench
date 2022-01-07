; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/dxtest/win32kdxtest/extr_dump.c_dump_D3dBufferCallbacks.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/dxtest/win32kdxtest/extr_dump.c_dump_D3dBufferCallbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"dumping the DD_D3DBUFCALLBACKS from %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c" puD3dBufferCallbacks->dwSize                                   : 0x%08lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c" puD3dBufferCallbacks->dwFlags                                  : \00", align 1
@DDHAL_D3DBUFCB32_CANCREATED3DBUF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"DDHAL_D3DBUFCB32_CANCREATED3DBUF\00", align 1
@DDHAL_D3DBUFCB32_CREATED3DBUF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"DDHAL_D3DBUFCB32_CREATED3DBUF\00", align 1
@DDHAL_D3DBUFCB32_DESTROYD3DBUF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"DDHAL_D3DBUFCB32_DESTROYD3DBUF\00", align 1
@DDHAL_D3DBUFCB32_LOCKD3DBUF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"DDHAL_D3DBUFCB32_LOCKD3DBUF\00", align 1
@DDHAL_D3DBUFCB32_UNLOCKD3DBUF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"DDHAL_D3DBUFCB32_UNLOCKD3DBUF\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"puD3dBufferCallbacks->dwFlags\00", align 1
@.str.9 = private unnamed_addr constant [75 x i8] c" puD3dBufferCallbacks->CanCreateD3DBuffer                       : 0x%08lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [75 x i8] c" puD3dBufferCallbacks->CreateD3DBuffer                          : 0x%08lx\0A\00", align 1
@.str.11 = private unnamed_addr constant [75 x i8] c" puD3dBufferCallbacks->DestroyD3DBuffer                         : 0x%08lx\0A\00", align 1
@.str.12 = private unnamed_addr constant [75 x i8] c" puD3dBufferCallbacks->LockD3DBuffer                            : 0x%08lx\0A\00", align 1
@.str.13 = private unnamed_addr constant [75 x i8] c" puD3dBufferCallbacks->UnlockD3DBuffer                          : 0x%08lx\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"none puD3dBufferCallbacks from the driver 0x%08lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_D3dBufferCallbacks(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = icmp eq i64 %12, 56
  br i1 %13, label %14, label %61

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @DDHAL_D3DBUFCB32_CANCREATED3DBUF, align 4
  %26 = call i32 @checkflag(i32 %24, i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @DDHAL_D3DBUFCB32_CREATED3DBUF, align 4
  %29 = call i32 @checkflag(i32 %27, i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @DDHAL_D3DBUFCB32_DESTROYD3DBUF, align 4
  %32 = call i32 @checkflag(i32 %30, i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @DDHAL_D3DBUFCB32_LOCKD3DBUF, align 4
  %35 = call i32 @checkflag(i32 %33, i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @DDHAL_D3DBUFCB32_UNLOCKD3DBUF, align 4
  %38 = call i32 @checkflag(i32 %36, i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @endcheckflag(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.9, i64 0, i64 0), i64 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.10, i64 0, i64 0), i64 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.11, i64 0, i64 0), i64 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.12, i64 0, i64 0), i64 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.13, i64 0, i64 0), i64 %59)
  br label %66

61:                                               ; preds = %2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %61, %14
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @checkflag(i32, i32, i8*) #1

declare dso_local i32 @endcheckflag(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
