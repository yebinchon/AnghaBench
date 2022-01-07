; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_server.c_read_packet_TCP_secure_connection.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_server.c_read_packet_TCP_secure_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_box_MACBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_packet_TCP_secure_connection(i32 %0, i64* %1, i32* %2, i32* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64* %1, i64** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %6
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @read_TCP_length(i32 %24)
  store i64 %25, i64* %14, align 8
  %26 = load i64, i64* %14, align 8
  %27 = icmp eq i64 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %7, align 4
  br label %79

29:                                               ; preds = %23
  %30 = load i64, i64* %14, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %79

33:                                               ; preds = %29
  %34 = load i64, i64* %14, align 8
  %35 = load i64*, i64** %9, align 8
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %6
  %37 = load i64, i64* %13, align 8
  %38 = load i32, i32* @crypto_box_MACBYTES, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 -1, i32* %7, align 4
  br label %79

45:                                               ; preds = %36
  %46 = load i64*, i64** %9, align 8
  %47 = load i64, i64* %46, align 8
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %15, align 8
  %49 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %16, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i64*, i64** %9, align 8
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @read_TCP_packet(i32 %50, i32* %49, i64 %52)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64*, i64** %9, align 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %77

60:                                               ; preds = %45
  %61 = load i64*, i64** %9, align 8
  store i64 0, i64* %61, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %17, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @decrypt_data_symmetric(i32* %62, i32* %63, i32* %49, i32 %64, i32* %65)
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* @crypto_box_MACBYTES, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %77

73:                                               ; preds = %60
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @increment_nonce(i32* %74)
  %76 = load i32, i32* %19, align 4
  store i32 %76, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %77

77:                                               ; preds = %73, %72, %59
  %78 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %78)
  br label %79

79:                                               ; preds = %77, %44, %32, %28
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i64 @read_TCP_length(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @read_TCP_packet(i32, i32*, i64) #1

declare dso_local i32 @decrypt_data_symmetric(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @increment_nonce(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
