; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_do_crypt_mac_abd.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_do_crypt_mac_abd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ZIO_DATA_MAC_LEN = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ECKSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_do_crypt_mac_abd(i64 %0, i32* %1, i32 %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %15, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %12, align 4
  %22 = call i32* @abd_borrow_buf_copy(i32* %20, i32 %21)
  store i32* %22, i32** %16, align 8
  %23 = load i32, i32* @ZIO_DATA_MAC_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %17, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %18, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @FTAG, align 4
  %30 = call i32 @spa_keystore_lookup_key(i32* %27, i32 %28, i32 %29, %struct.TYPE_4__** %15)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %6
  br label %68

34:                                               ; preds = %6
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %16, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @ZIO_DATA_MAC_LEN, align 4
  %40 = call i32 @zio_crypt_do_hmac(i32* %36, i32* %37, i32 %38, i32* %26, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %68

44:                                               ; preds = %34
  %45 = load i32*, i32** %11, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @abd_return_buf(i32* %45, i32* %46, i32 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %51 = load i32, i32* @FTAG, align 4
  %52 = call i32 @spa_keystore_dsl_key_rele(i32* %49, %struct.TYPE_4__* %50, i32 %51)
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* @ZIO_DATA_MAC_LEN, align 4
  %58 = call i32 @bcopy(i32* %26, i32* %56, i32 %57)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %82

59:                                               ; preds = %44
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* @ZIO_DATA_MAC_LEN, align 4
  %62 = call i64 @bcmp(i32* %26, i32* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @ECKSUM, align 4
  %66 = call i32 @SET_ERROR(i32 %65)
  store i32 %66, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %82

67:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %82

68:                                               ; preds = %43, %33
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %70 = icmp ne %struct.TYPE_4__* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32*, i32** %9, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %74 = load i32, i32* @FTAG, align 4
  %75 = call i32 @spa_keystore_dsl_key_rele(i32* %72, %struct.TYPE_4__* %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %68
  %77 = load i32*, i32** %11, align 8
  %78 = load i32*, i32** %16, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @abd_return_buf(i32* %77, i32* %78, i32 %79)
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %82

82:                                               ; preds = %76, %67, %64, %55
  %83 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32* @abd_borrow_buf_copy(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @spa_keystore_lookup_key(i32*, i32, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @zio_crypt_do_hmac(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @abd_return_buf(i32*, i32*, i32) #1

declare dso_local i32 @spa_keystore_dsl_key_rele(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i64 @bcmp(i32*, i32*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
