; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_crypto_key_destroy_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_crypto_key_destroy_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@DSL_CRYPTO_KEY_REFCOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_crypto_key_destroy_sync(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @DSL_CRYPTO_KEY_REFCOUNT, align 4
  %15 = call i32 @zap_lookup(i32* %12, i32 %13, i32 %14, i32 4, i32 1, i32* %6)
  %16 = call i32 @VERIFY0(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @DSL_CRYPTO_KEY_REFCOUNT, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = call i32 @zap_increment(i32* %20, i32 %21, i32 %22, i32 -1, %struct.TYPE_7__* %23)
  %25 = call i32 @VERIFY0(i32 %24)
  br label %32

26:                                               ; preds = %2
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = call i32 @zap_destroy(i32* %27, i32 %28, %struct.TYPE_7__* %29)
  %31 = call i32 @VERIFY0(i32 %30)
  br label %32

32:                                               ; preds = %26, %19
  ret void
}

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_lookup(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @zap_increment(i32*, i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @zap_destroy(i32*, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
