; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c__filter_args.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c__filter_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i32 }

@PTYPE_TAG_DONTCOPY = common dso_local global i32 0, align 4
@PTYPE_TAG_ALLOCSESSION = common dso_local global i32 0, align 4
@MESSAGE_TYPE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skynet_context*, i32, i32*, i8**, i64*)* @_filter_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_filter_args(%struct.skynet_context* %0, i32 %1, i32* %2, i8** %3, i64* %4) #0 {
  %6 = alloca %struct.skynet_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.skynet_context* %0, %struct.skynet_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i64* %4, i64** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @PTYPE_TAG_DONTCOPY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @PTYPE_TAG_ALLOCSESSION, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 255
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %5
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %34 = call i32 @skynet_context_newsession(%struct.skynet_context* %33)
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %27, %5
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  %40 = load i8**, i8*** %9, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i64*, i64** %10, align 8
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 1
  %47 = call i8* @skynet_malloc(i64 %46)
  store i8* %47, i8** %13, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load i8**, i8*** %9, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i64*, i64** %10, align 8
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @memcpy(i8* %48, i8* %50, i64 %52)
  %54 = load i8*, i8** %13, align 8
  %55 = load i64*, i64** %10, align 8
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %13, align 8
  %59 = load i8**, i8*** %9, align 8
  store i8* %58, i8** %59, align 8
  br label %60

60:                                               ; preds = %43, %39, %36
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* @MESSAGE_TYPE_SHIFT, align 8
  %64 = shl i64 %62, %63
  %65 = load i64*, i64** %10, align 8
  %66 = load i64, i64* %65, align 8
  %67 = or i64 %66, %64
  store i64 %67, i64* %65, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @skynet_context_newsession(%struct.skynet_context*) #1

declare dso_local i8* @skynet_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
