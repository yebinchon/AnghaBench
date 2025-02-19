; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_lhmac64.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_lhmac64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lhmac64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lhmac64(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x i32], align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %9 = call i32 @read64(i32* %6, i32* %7, i32* %8)
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %13 = call i32 @hmac(i32* %10, i32* %11, i32* %12)
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %16 = call i32 @pushqword(i32* %14, i32* %15)
  ret i32 %16
}

declare dso_local i32 @read64(i32*, i32*, i32*) #1

declare dso_local i32 @hmac(i32*, i32*, i32*) #1

declare dso_local i32 @pushqword(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
