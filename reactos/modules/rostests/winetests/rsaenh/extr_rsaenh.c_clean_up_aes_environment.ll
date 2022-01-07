; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_clean_up_aes_environment.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_clean_up_aes_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hProv = common dso_local global i32 0, align 4
@NTE_BAD_FLAGS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@szContainer = common dso_local global i32 0, align 4
@PROV_RSA_AES = common dso_local global i32 0, align 4
@CRYPT_DELETEKEYSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @clean_up_aes_environment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_up_aes_environment() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @hProv, align 4
  %3 = call i32 @CryptReleaseContext(i32 %2, i32 1)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = call i64 (...) @GetLastError()
  %8 = load i64, i64* @NTE_BAD_FLAGS, align 8
  %9 = icmp eq i64 %7, %8
  br label %10

10:                                               ; preds = %6, %0
  %11 = phi i1 [ false, %0 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  %13 = call i64 (...) @GetLastError()
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32, i32* @szContainer, align 4
  %16 = load i32, i32* @PROV_RSA_AES, align 4
  %17 = load i32, i32* @CRYPT_DELETEKEYSET, align 4
  %18 = call i32 @CryptAcquireContextA(i32* @hProv, i32 %15, i32* null, i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @CryptReleaseContext(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @CryptAcquireContextA(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
