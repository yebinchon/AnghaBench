; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_amatch.c_amatchEncodeInt.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_amatch.c_amatchEncodeInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@amatchEncodeInt.a = internal constant [65 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ^abcdefghijklmnopqrstuvwxyz~\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @amatchEncodeInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amatchEncodeInt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = ashr i32 %5, 18
  %7 = and i32 %6, 63
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [65 x i8], [65 x i8]* @amatchEncodeInt.a, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 %10, i8* %12, align 1
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 12
  %15 = and i32 %14, 63
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [65 x i8], [65 x i8]* @amatchEncodeInt.a, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 %18, i8* %20, align 1
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %21, 6
  %23 = and i32 %22, 63
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [65 x i8], [65 x i8]* @amatchEncodeInt.a, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  store i8 %26, i8* %28, align 1
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 63
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [65 x i8], [65 x i8]* @amatchEncodeInt.a, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  store i8 %33, i8* %35, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
