; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_populate_create_encryption_params_nvlists.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_populate_create_encryption_params_nvlists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_TRUE = common dso_local global i32 0, align 4
@ZFS_KEYFORMAT_PASSPHRASE = common dso_local global i64 0, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to generate salt.\00", align 1
@ZFS_PROP_PBKDF2_SALT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to add salt to properties.\00", align 1
@ZFS_PROP_PBKDF2_ITERS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DEFAULT_PBKDF2_ITERATIONS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to get pbkdf2 iterations.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"Cannot specify pbkdf2iters with a non-passphrase keyformat.\00", align 1
@WRAPPING_KEY_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i64, i8*, i32*, i32**, i64*)* @populate_create_encryption_params_nvlists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_create_encryption_params_nvlists(i32* %0, i32* %1, i32 %2, i64 %3, i8* %4, i32* %5, i32** %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32** %6, i32*** %16, align 8
  store i64* %7, i64** %17, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i32* null, i32** %21, align 8
  store i64 0, i64* %22, align 8
  store i32* null, i32** %23, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %8
  %28 = load i32*, i32** %11, align 8
  %29 = call i8* @zfs_get_name(i32* %28)
  br label %31

30:                                               ; preds = %8
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i8* [ %29, %27 ], [ null, %30 ]
  store i8* %32, i8** %24, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @B_TRUE, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i64, i64* %13, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = load i8*, i8** %24, align 8
  %39 = call i32 @get_key_material(i32* %33, i32 %34, i32 %35, i64 %36, i8* %37, i8* %38, i32** %21, i64* %22, i32* null)
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* %18, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %132

43:                                               ; preds = %31
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* @ZFS_KEYFORMAT_PASSPHRASE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %100

47:                                               ; preds = %43
  %48 = bitcast i64* %20 to i32*
  %49 = call i32 @pkcs11_get_urandom(i32* %48, i32 8)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ne i64 %51, 8
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* @TEXT_DOMAIN, align 4
  %56 = call i32 @dgettext(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %57 = call i32 @zfs_error_aux(i32* %54, i32 %56)
  br label %132

58:                                               ; preds = %47
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* @ZFS_PROP_PBKDF2_SALT, align 4
  %61 = call i32 @zfs_prop_to_name(i32 %60)
  %62 = load i64, i64* %20, align 8
  %63 = call i32 @nvlist_add_uint64(i32* %59, i32 %61, i64 %62)
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %18, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* @TEXT_DOMAIN, align 4
  %69 = call i32 @dgettext(i32 %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %70 = call i32 @zfs_error_aux(i32* %67, i32 %69)
  br label %132

71:                                               ; preds = %58
  %72 = load i32*, i32** %15, align 8
  %73 = load i32, i32* @ZFS_PROP_PBKDF2_ITERS, align 4
  %74 = call i32 @zfs_prop_to_name(i32 %73)
  %75 = call i32 @nvlist_lookup_uint64(i32* %72, i32 %74, i64* %19)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* @ENOENT, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %71
  %80 = load i64, i64* @DEFAULT_PBKDF2_ITERATIONS, align 8
  store i64 %80, i64* %19, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = load i32, i32* @ZFS_PROP_PBKDF2_ITERS, align 4
  %83 = call i32 @zfs_prop_to_name(i32 %82)
  %84 = load i64, i64* %19, align 8
  %85 = call i32 @nvlist_add_uint64(i32* %81, i32 %83, i64 %84)
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %132

89:                                               ; preds = %79
  br label %99

90:                                               ; preds = %71
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* @TEXT_DOMAIN, align 4
  %96 = call i32 @dgettext(i32 %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %97 = call i32 @zfs_error_aux(i32* %94, i32 %96)
  br label %132

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %89
  br label %114

100:                                              ; preds = %43
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* @ZFS_PROP_PBKDF2_ITERS, align 4
  %103 = call i32 @zfs_prop_to_name(i32 %102)
  %104 = call i32 @nvlist_lookup_uint64(i32* %101, i32 %103, i64* %19)
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i32, i32* @EINVAL, align 4
  store i32 %108, i32* %18, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* @TEXT_DOMAIN, align 4
  %111 = call i32 @dgettext(i32 %110, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %112 = call i32 @zfs_error_aux(i32* %109, i32 %111)
  br label %132

113:                                              ; preds = %100
  br label %114

114:                                              ; preds = %113, %99
  %115 = load i32*, i32** %10, align 8
  %116 = load i64, i64* %13, align 8
  %117 = load i64, i64* %19, align 8
  %118 = load i32*, i32** %21, align 8
  %119 = load i64, i64* %22, align 8
  %120 = load i64, i64* %20, align 8
  %121 = call i32 @derive_key(i32* %115, i64 %116, i64 %117, i32* %118, i64 %119, i64 %120, i32** %23)
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %18, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  br label %132

125:                                              ; preds = %114
  %126 = load i32*, i32** %21, align 8
  %127 = call i32 @free(i32* %126)
  %128 = load i32*, i32** %23, align 8
  %129 = load i32**, i32*** %16, align 8
  store i32* %128, i32** %129, align 8
  %130 = load i64, i64* @WRAPPING_KEY_LEN, align 8
  %131 = load i64*, i64** %17, align 8
  store i64 %130, i64* %131, align 8
  store i32 0, i32* %9, align 4
  br label %148

132:                                              ; preds = %124, %107, %93, %88, %66, %53, %42
  %133 = load i32*, i32** %21, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32*, i32** %21, align 8
  %137 = call i32 @free(i32* %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = load i32*, i32** %23, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32*, i32** %23, align 8
  %143 = call i32 @free(i32* %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32**, i32*** %16, align 8
  store i32* null, i32** %145, align 8
  %146 = load i64*, i64** %17, align 8
  store i64 0, i64* %146, align 8
  %147 = load i32, i32* %18, align 4
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %144, %125
  %149 = load i32, i32* %9, align 4
  ret i32 %149
}

declare dso_local i8* @zfs_get_name(i32*) #1

declare dso_local i32 @get_key_material(i32*, i32, i32, i64, i8*, i8*, i32**, i64*, i32*) #1

declare dso_local i32 @pkcs11_get_urandom(i32*, i32) #1

declare dso_local i32 @zfs_error_aux(i32*, i32) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32 @nvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @derive_key(i32*, i64, i64, i32*, i64, i64, i32**) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
