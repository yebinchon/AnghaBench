; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_update_crypto.c_hash_from_binary_file.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_update_crypto.c_hash_from_binary_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @hash_from_binary_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_from_binary_file(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4096 x i32], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32* @vlc_fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %20, %14
  %16 = getelementptr inbounds [4096 x i32], [4096 x i32]* %6, i64 0, i64 0
  %17 = load i32*, i32** %8, align 8
  %18 = call i64 @fread(i32* %16, i32 1, i32 16384, i32* %17)
  store i64 %18, i64* %7, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = getelementptr inbounds [4096 x i32], [4096 x i32]* %6, i64 0, i64 0
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @gcry_md_write(i32 %21, i32* %22, i64 %23)
  br label %15

25:                                               ; preds = %15
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @fclose(i32* %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32* @vlc_fopen(i8*, i8*) #1

declare dso_local i64 @fread(i32*, i32, i32, i32*) #1

declare dso_local i32 @gcry_md_write(i32, i32*, i64) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
