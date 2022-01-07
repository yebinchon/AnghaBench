; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_get_ndr_types_params.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_get_ndr_types_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@Oi_HAS_RPCFLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @get_ndr_types_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_ndr_types_params(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %2, align 8
  %8 = call %struct.TYPE_11__* (...) @get_ndr_types_proxy_info()
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 3
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %11, i64 %17
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %5, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @Oi_HAS_RPCFLAGS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 4
  store i8* %29, i8** %4, align 8
  br label %33

30:                                               ; preds = %1
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  store i8* %32, i8** %4, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i8*, i8** %4, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %6, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 16
  store i8* %37, i8** %4, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %33
  %44 = load i8*, i8** %4, align 8
  %45 = bitcast i8* %44 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %7, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %4, align 8
  br label %52

52:                                               ; preds = %43, %33
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %2, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i8*, i8** %4, align 8
  %58 = bitcast i8* %57 to i32*
  ret i32* %58
}

declare dso_local %struct.TYPE_11__* @get_ndr_types_proxy_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
