; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_curl-init.c_seafile_curl_deinit.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_curl-init.c_seafile_curl_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curl_locks = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seafile_curl_deinit() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @CRYPTO_set_id_callback(i32 0)
  %3 = call i32 @CRYPTO_set_locking_callback(i32 0)
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %14, %0
  %5 = load i32, i32* %1, align 4
  %6 = call i32 (...) @CRYPTO_num_locks()
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = load i32*, i32** @curl_locks, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = call i32 @pthread_mutex_destroy(i32* %12)
  br label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %4

17:                                               ; preds = %4
  %18 = load i32*, i32** @curl_locks, align 8
  %19 = call i32 @free(i32* %18)
  ret void
}

declare dso_local i32 @CRYPTO_set_id_callback(i32) #1

declare dso_local i32 @CRYPTO_set_locking_callback(i32) #1

declare dso_local i32 @CRYPTO_num_locks(...) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
