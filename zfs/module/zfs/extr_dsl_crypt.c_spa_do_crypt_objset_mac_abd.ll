; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_do_crypt_objset_mac_abd.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_spa_do_crypt_objset_mac_abd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@ZIO_OBJSET_MAC_LEN = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ECKSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_do_crypt_objset_mac_abd(i64 %0, i32* %1, i32 %2, i32* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %15, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call i8* @abd_borrow_buf_copy(i32* %22, i32 %23)
  store i8* %24, i8** %16, align 8
  %25 = load i8*, i8** %16, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %17, align 8
  %27 = load i32, i32* @ZIO_OBJSET_MAC_LEN, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %18, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %19, align 8
  %31 = load i32, i32* @ZIO_OBJSET_MAC_LEN, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %20, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @FTAG, align 4
  %37 = call i32 @spa_keystore_lookup_key(i32* %34, i32 %35, i32 %36, %struct.TYPE_6__** %15)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %6
  br label %99

41:                                               ; preds = %6
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i8*, i8** %16, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i64, i64* %13, align 8
  %47 = call i32 @zio_crypt_do_objset_hmacs(i32* %43, i8* %44, i32 %45, i64 %46, i32* %30, i32* %33)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %99

51:                                               ; preds = %41
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %54 = load i32, i32* @FTAG, align 4
  %55 = call i32 @spa_keystore_dsl_key_rele(i32* %52, %struct.TYPE_6__* %53, i32 %54)
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ZIO_OBJSET_MAC_LEN, align 4
  %63 = call i32 @bcopy(i32* %30, i32 %61, i32 %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ZIO_OBJSET_MAC_LEN, align 4
  %68 = call i32 @bcopy(i32* %33, i32 %66, i32 %67)
  %69 = load i32*, i32** %11, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @abd_return_buf_copy(i32* %69, i8* %70, i32 %71)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %113

73:                                               ; preds = %51
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ZIO_OBJSET_MAC_LEN, align 4
  %78 = call i64 @bcmp(i32* %30, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ZIO_OBJSET_MAC_LEN, align 4
  %85 = call i64 @bcmp(i32* %33, i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %80, %73
  %88 = load i32*, i32** %11, align 8
  %89 = load i8*, i8** %16, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @abd_return_buf(i32* %88, i8* %89, i32 %90)
  %92 = load i32, i32* @ECKSUM, align 4
  %93 = call i32 @SET_ERROR(i32 %92)
  store i32 %93, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %113

94:                                               ; preds = %80
  %95 = load i32*, i32** %11, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @abd_return_buf(i32* %95, i8* %96, i32 %97)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %113

99:                                               ; preds = %50, %40
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %101 = icmp ne %struct.TYPE_6__* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32*, i32** %9, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %105 = load i32, i32* @FTAG, align 4
  %106 = call i32 @spa_keystore_dsl_key_rele(i32* %103, %struct.TYPE_6__* %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %99
  %108 = load i32*, i32** %11, align 8
  %109 = load i8*, i8** %16, align 8
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @abd_return_buf(i32* %108, i8* %109, i32 %110)
  %112 = load i32, i32* %14, align 4
  store i32 %112, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %113

113:                                              ; preds = %107, %94, %87, %58
  %114 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i8* @abd_borrow_buf_copy(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @spa_keystore_lookup_key(i32*, i32, i32, %struct.TYPE_6__**) #1

declare dso_local i32 @zio_crypt_do_objset_hmacs(i32*, i8*, i32, i64, i32*, i32*) #1

declare dso_local i32 @spa_keystore_dsl_key_rele(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i32 @abd_return_buf_copy(i32*, i8*, i32) #1

declare dso_local i64 @bcmp(i32*, i32, i32) #1

declare dso_local i32 @abd_return_buf(i32*, i8*, i32) #1

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
