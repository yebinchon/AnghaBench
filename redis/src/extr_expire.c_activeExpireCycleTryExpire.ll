; ModuleID = '/home/carl/AnghaBench/redis/src/extr_expire.c_activeExpireCycleTryExpire.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_expire.c_activeExpireCycleTryExpire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32 }

@server = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@NOTIFY_EXPIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"expired\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @activeExpireCycleTryExpire(%struct.TYPE_7__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @dictGetSignedIntegerVal(i32* %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @dictGetKey(i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @sdslen(i32 %20)
  %22 = call i32* @createStringObject(i32 %19, i32 %21)
  store i32* %22, i32** %10, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 8
  %26 = call i32 @propagateExpire(%struct.TYPE_7__* %23, i32* %24, i64 %25)
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %16
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @dbAsyncDelete(%struct.TYPE_7__* %30, i32* %31)
  br label %37

33:                                               ; preds = %16
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @dbSyncDelete(%struct.TYPE_7__* %34, i32* %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @NOTIFY_EXPIRED, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @notifyKeyspaceEvent(i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %39, i32 %42)
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @trackingInvalidateKey(i32* %44)
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @decrRefCount(i32* %46)
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 8
  store i32 1, i32* %4, align 4
  br label %51

50:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %37
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @dictGetSignedIntegerVal(i32*) #1

declare dso_local i32 @dictGetKey(i32*) #1

declare dso_local i32* @createStringObject(i32, i32) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @propagateExpire(%struct.TYPE_7__*, i32*, i64) #1

declare dso_local i32 @dbAsyncDelete(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @dbSyncDelete(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, i32*, i32) #1

declare dso_local i32 @trackingInvalidateKey(i32*) #1

declare dso_local i32 @decrRefCount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
