; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_TCP_test.c_write_packet_TCP_secure_connection.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_TCP_test.c_write_packet_TCP_secure_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_TCP_con = type { i32, i32, i32 }

@crypto_box_MACBYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"send failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_packet_TCP_secure_connection(%struct.sec_TCP_con* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sec_TCP_con*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sec_TCP_con* %0, %struct.sec_TCP_con** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 4, %14
  %16 = load i32, i32* @crypto_box_MACBYTES, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %15, %17
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @crypto_box_MACBYTES, align 4
  %23 = add nsw i32 %21, %22
  %24 = call i32 @htons(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = call i32 @memcpy(i32* %20, i32* %10, i32 4)
  %26 = load %struct.sec_TCP_con*, %struct.sec_TCP_con** %5, align 8
  %27 = getelementptr inbounds %struct.sec_TCP_con, %struct.sec_TCP_con* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sec_TCP_con*, %struct.sec_TCP_con** %5, align 8
  %30 = getelementptr inbounds %struct.sec_TCP_con, %struct.sec_TCP_con* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds i32, i32* %20, i64 4
  %35 = call i32 @encrypt_data_symmetric(i32 %28, i32 %31, i32* %32, i32 %33, i32* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = zext i32 %36 to i64
  %38 = mul nuw i64 4, %18
  %39 = sub i64 %38, 4
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %58

42:                                               ; preds = %3
  %43 = load %struct.sec_TCP_con*, %struct.sec_TCP_con** %5, align 8
  %44 = getelementptr inbounds %struct.sec_TCP_con, %struct.sec_TCP_con* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @increment_nonce(i32 %45)
  %47 = load %struct.sec_TCP_con*, %struct.sec_TCP_con** %5, align 8
  %48 = getelementptr inbounds %struct.sec_TCP_con, %struct.sec_TCP_con* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nuw i64 4, %18
  %51 = trunc i64 %50 to i32
  %52 = call i32 @send(i32 %49, i32* %20, i32 %51, i32 0)
  %53 = sext i32 %52 to i64
  %54 = mul nuw i64 4, %18
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @ck_assert_msg(i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %58

58:                                               ; preds = %42, %41
  %59 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @encrypt_data_symmetric(i32, i32, i32*, i32, i32*) #2

declare dso_local i32 @increment_nonce(i32) #2

declare dso_local i32 @ck_assert_msg(i32, i8*) #2

declare dso_local i32 @send(i32, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
