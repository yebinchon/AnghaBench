; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_curl-init.c_seafile_curl_init.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_curl-init.c_seafile_curl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curl_locks = common dso_local global i32* null, align 8
@pthread_self = common dso_local global i32 0, align 4
@seafile_curl_locking_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seafile_curl_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @CRYPTO_num_locks()
  %3 = sext i32 %2 to i64
  %4 = mul i64 4, %3
  %5 = trunc i64 %4 to i32
  %6 = call i32* @malloc(i32 %5)
  store i32* %6, i32** @curl_locks, align 8
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %17, %0
  %8 = load i32, i32* %1, align 4
  %9 = call i32 (...) @CRYPTO_num_locks()
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = load i32*, i32** @curl_locks, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i32 @pthread_mutex_init(i32* %15, i32* null)
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %7

20:                                               ; preds = %7
  %21 = load i32, i32* @pthread_self, align 4
  %22 = call i32 @CRYPTO_set_id_callback(i32 %21)
  %23 = load i32, i32* @seafile_curl_locking_callback, align 4
  %24 = call i32 @CRYPTO_set_locking_callback(i32 %23)
  ret void
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @CRYPTO_num_locks(...) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @CRYPTO_set_id_callback(i32) #1

declare dso_local i32 @CRYPTO_set_locking_callback(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
