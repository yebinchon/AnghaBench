; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_handle_getnodes.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_handle_getnodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@crypto_box_MACBYTES = common dso_local global i32 0, align 4
@crypto_box_BEFORENMBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32)* @handle_getnodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_getnodes(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %19 = add nsw i32 1, %18
  %20 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %23 = add nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 4
  %26 = load i32, i32* @crypto_box_MACBYTES, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %25, %27
  %29 = icmp ne i64 %17, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %101

31:                                               ; preds = %4
  %32 = load i8*, i8** %6, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %10, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @id_equal(i32* %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %101

42:                                               ; preds = %31
  %43 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, 4
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %11, align 8
  %47 = alloca i32, i64 %45, align 16
  store i64 %45, i64* %12, align 8
  %48 = load i32, i32* @crypto_box_BEFORENMBYTES, align 4
  %49 = zext i32 %48 to i64
  %50 = alloca i32, i64 %49, align 16
  store i64 %49, i64* %13, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = call i32 @DHT_get_shared_key_recv(%struct.TYPE_4__* %51, i32* %50, i32* %53)
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, 4
  %71 = load i32, i32* @crypto_box_MACBYTES, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 %70, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @decrypt_data_symmetric(i32* %50, i32* %59, i32* %67, i32 %74, i32* %47)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %79, 4
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %42
  store i32 1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %99

83:                                               ; preds = %42
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %47, i64 %89
  %91 = call i32 @sendnodes_ipv6(%struct.TYPE_4__* %84, i32 %85, i32* %87, i32* %47, i32* %90, i32 4, i32* %50)
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @add_to_ping(i32 %94, i32* %96, i32 %97)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %99

99:                                               ; preds = %83, %82
  %100 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %100)
  br label %101

101:                                              ; preds = %99, %41, %30
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i64 @id_equal(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @DHT_get_shared_key_recv(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @decrypt_data_symmetric(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @sendnodes_ipv6(%struct.TYPE_4__*, i32, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @add_to_ping(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
