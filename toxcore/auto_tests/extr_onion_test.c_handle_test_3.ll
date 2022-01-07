; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_onion_test.c_handle_test_3.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_onion_test.c_handle_test_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@crypto_box_NONCEBYTES = common dso_local global i64 0, align 8
@ONION_ANNOUNCE_SENDBACK_DATA_LENGTH = common dso_local global i64 0, align 8
@crypto_hash_sha256_BYTES = common dso_local global i64 0, align 8
@crypto_box_MACBYTES = common dso_local global i64 0, align 8
@test_3_pub_key = common dso_local global i32 0, align 4
@sb_data = common dso_local global i32 0, align 4
@test_3_ping_id = common dso_local global i32 0, align 4
@handled_test_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i64)* @handle_test_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_test_3(i8* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %19 = add nsw i64 1, %18
  %20 = load i64, i64* @ONION_ANNOUNCE_SENDBACK_DATA_LENGTH, align 8
  %21 = add nsw i64 %19, %20
  %22 = add nsw i64 %21, 1
  %23 = load i64, i64* @crypto_hash_sha256_BYTES, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* @crypto_box_MACBYTES, align 8
  %26 = add nsw i64 %24, %25
  %27 = icmp ne i64 %17, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %73

29:                                               ; preds = %4
  %30 = load i64, i64* @crypto_hash_sha256_BYTES, align 8
  %31 = add nsw i64 1, %30
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %11, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %12, align 8
  %34 = load i32, i32* @test_3_pub_key, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i64, i64* @ONION_ANNOUNCE_SENDBACK_DATA_LENGTH, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i64, i64* @ONION_ANNOUNCE_SENDBACK_DATA_LENGTH, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i64, i64* @crypto_box_NONCEBYTES, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i64, i64* @crypto_hash_sha256_BYTES, align 8
  %51 = add nsw i64 1, %50
  %52 = load i64, i64* @crypto_box_MACBYTES, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @decrypt_data(i32 %34, i32 %39, i32* %43, i32* %49, i64 %53, i32* %33)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %71

58:                                               ; preds = %29
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* @sb_data, align 4
  %62 = load i64, i64* @ONION_ANNOUNCE_SENDBACK_DATA_LENGTH, align 8
  %63 = call i64 @memcmp(i32* %60, i32 %61, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %71

66:                                               ; preds = %58
  %67 = load i32, i32* @test_3_ping_id, align 4
  %68 = getelementptr inbounds i32, i32* %33, i64 1
  %69 = load i64, i64* @crypto_hash_sha256_BYTES, align 8
  %70 = call i32 @memcpy(i32 %67, i32* %68, i64 %69)
  store i32 1, i32* @handled_test_3, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %71

71:                                               ; preds = %66, %65, %57
  %72 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %72)
  br label %73

73:                                               ; preds = %71, %28
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @decrypt_data(i32, i32, i32*, i32*, i64, i32*) #2

declare dso_local i64 @memcmp(i32*, i32, i64) #2

declare dso_local i32 @memcpy(i32, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
