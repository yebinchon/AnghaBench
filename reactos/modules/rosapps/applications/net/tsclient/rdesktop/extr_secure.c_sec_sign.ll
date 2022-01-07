; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_secure.c_sec_sign.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_secure.c_sec_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pad_54 = common dso_local global i32* null, align 8
@pad_92 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sec_sign(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [20 x i32], align 16
  %14 = alloca [16 x i32], align 16
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @buf_out_uint32(i32* %18, i32 %19)
  %21 = call i32 @SHA1_Init(i32* %16)
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @SHA1_Update(i32* %16, i32* %22, i32 %23)
  %25 = load i32*, i32** @pad_54, align 8
  %26 = call i32 @SHA1_Update(i32* %16, i32* %25, i32 40)
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %28 = call i32 @SHA1_Update(i32* %16, i32* %27, i32 4)
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @SHA1_Update(i32* %16, i32* %29, i32 %30)
  %32 = getelementptr inbounds [20 x i32], [20 x i32]* %13, i64 0, i64 0
  %33 = call i32 @SHA1_Final(i32* %32, i32* %16)
  %34 = call i32 @MD5_Init(i32* %17)
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @MD5_Update(i32* %17, i32* %35, i32 %36)
  %38 = load i32*, i32** @pad_92, align 8
  %39 = call i32 @MD5_Update(i32* %17, i32* %38, i32 48)
  %40 = getelementptr inbounds [20 x i32], [20 x i32]* %13, i64 0, i64 0
  %41 = call i32 @MD5_Update(i32* %17, i32* %40, i32 20)
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %43 = call i32 @MD5_Final(i32* %42, i32* %17)
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @memcpy(i32* %44, i32* %45, i32 %46)
  ret void
}

declare dso_local i32 @buf_out_uint32(i32*, i32) #1

declare dso_local i32 @SHA1_Init(i32*) #1

declare dso_local i32 @SHA1_Update(i32*, i32*, i32) #1

declare dso_local i32 @SHA1_Final(i32*, i32*) #1

declare dso_local i32 @MD5_Init(i32*) #1

declare dso_local i32 @MD5_Update(i32*, i32*, i32) #1

declare dso_local i32 @MD5_Final(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
