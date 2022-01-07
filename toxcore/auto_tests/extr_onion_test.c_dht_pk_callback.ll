; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_onion_test.c_dht_pk_callback.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_onion_test.c_dht_pk_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NUM_FIRST = common dso_local global i64 0, align 8
@first = common dso_local global i32 0, align 4
@NUM_LAST = common dso_local global i64 0, align 8
@last = common dso_local global i32 0, align 4
@dht_ip_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"DHT_addfriend() did not return 0\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Count not 1, count is %u\00", align 1
@last_dht_pk = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Error wrong dht key.\00", align 1
@first_dht_pk = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"Error.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32*)* @dht_pk_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dht_pk_callback(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i64, i64* @NUM_FIRST, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @first, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13, %3
  %17 = load i64, i64* @NUM_LAST, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %77

20:                                               ; preds = %16
  %21 = load i32, i32* @last, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %77, label %23

23:                                               ; preds = %20, %13
  %24 = load i8*, i8** %4, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %7, align 8
  store i32 0, i32* %8, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @DHT_addfriend(i32 %30, i32* %31, i32* @dht_ip_callback, i8* %32, i64 %33, i32* %8)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ck_assert_msg(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 1
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i32, i8*, ...) @ck_assert_msg(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i64, i64* @NUM_FIRST, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %23
  %48 = load i32, i32* @first, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  store i32 1, i32* @first, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @last_dht_pk, align 4
  %53 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %54 = call i64 @memcmp(i32* %51, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 @ck_abort_msg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %50
  br label %77

59:                                               ; preds = %47, %23
  %60 = load i64, i64* @NUM_LAST, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load i32, i32* @last, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %63
  store i32 1, i32* @last, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @first_dht_pk, align 4
  %69 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %70 = call i64 @memcmp(i32* %67, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = call i32 @ck_abort_msg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %66
  br label %77

75:                                               ; preds = %63, %59
  %76 = call i32 @ck_abort_msg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %58, %74, %75, %20, %16
  ret void
}

declare dso_local i32 @DHT_addfriend(i32, i32*, i32*, i8*, i64, i32*) #1

declare dso_local i32 @ck_assert_msg(i32, i8*, ...) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @ck_abort_msg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
