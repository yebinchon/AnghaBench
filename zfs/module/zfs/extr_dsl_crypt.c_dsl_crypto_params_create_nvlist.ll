; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_crypto_params_create_nvlist.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_crypto_params_create_nvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32*, i32 }

@ZIO_CRYPT_INHERIT = common dso_local global i64 0, align 8
@ZFS_KEYFORMAT_NONE = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ZFS_PROP_ENCRYPTION = common dso_local global i32 0, align 4
@ZFS_PROP_KEYFORMAT = common dso_local global i32 0, align 4
@ZFS_PROP_KEYLOCATION = common dso_local global i32 0, align 4
@ZFS_PROP_PBKDF2_SALT = common dso_local global i32 0, align 4
@ZFS_PROP_PBKDF2_ITERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"wkeydata\00", align 1
@DCP_CMD_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ZIO_CRYPT_FUNCTIONS = common dso_local global i64 0, align 8
@ZFS_KEYFORMAT_FORMATS = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@WRAPPING_KEY_LEN = common dso_local global i64 0, align 8
@ZIO_CRYPT_ON = common dso_local global i64 0, align 8
@ZIO_CRYPT_ON_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_crypto_params_create_nvlist(i8* %0, i32* %1, i32* %2, %struct.TYPE_5__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_5__** %3, %struct.TYPE_5__*** %9, align 8
  %20 = load i64, i64* @ZIO_CRYPT_INHERIT, align 8
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* @ZFS_KEYFORMAT_NONE, align 8
  store i64 %21, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i64 0, i64* %18, align 8
  store i8* null, i8** %19, align 8
  %22 = load i32, i32* @KM_SLEEP, align 4
  %23 = call %struct.TYPE_5__* @kmem_zalloc(i32 32, i32 %22)
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %15, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = call i32 @SET_ERROR(i32 %27)
  store i32 %28, i32* %10, align 4
  br label %171

29:                                               ; preds = %4
  %30 = load i8*, i8** %6, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %29
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @ZFS_PROP_ENCRYPTION, align 4
  %39 = call i32 @zfs_prop_to_name(i32 %38)
  %40 = call i32 @nvlist_lookup_uint64(i32* %37, i32 %39, i64* %11)
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @ZFS_PROP_KEYFORMAT, align 4
  %43 = call i32 @zfs_prop_to_name(i32 %42)
  %44 = call i32 @nvlist_lookup_uint64(i32* %41, i32 %43, i64* %12)
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @ZFS_PROP_KEYLOCATION, align 4
  %47 = call i32 @zfs_prop_to_name(i32 %46)
  %48 = call i32 @nvlist_lookup_string(i32* %45, i32 %47, i8** %19)
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @ZFS_PROP_PBKDF2_SALT, align 4
  %51 = call i32 @zfs_prop_to_name(i32 %50)
  %52 = call i32 @nvlist_lookup_uint64(i32* %49, i32 %51, i64* %13)
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* @ZFS_PROP_PBKDF2_ITERS, align 4
  %55 = call i32 @zfs_prop_to_name(i32 %54)
  %56 = call i32 @nvlist_lookup_uint64(i32* %53, i32 %55, i64* %14)
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %36, %29
  %61 = load i32*, i32** %8, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @nvlist_lookup_uint8_array(i32* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32** %17, i64* %18)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DCP_CMD_MAX, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @EINVAL, align 4
  %74 = call i32 @SET_ERROR(i32 %73)
  store i32 %74, i32* %10, align 4
  br label %171

75:                                               ; preds = %66
  %76 = load i8*, i8** %6, align 8
  %77 = ptrtoint i8* %76 to i64
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ZIO_CRYPT_FUNCTIONS, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @EINVAL, align 4
  %88 = call i32 @SET_ERROR(i32 %87)
  store i32 %88, i32* %10, align 4
  br label %171

89:                                               ; preds = %80
  %90 = load i64, i64* %11, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %89
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* @ZFS_KEYFORMAT_FORMATS, align 8
  %96 = icmp sge i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* @EINVAL, align 4
  %99 = call i32 @SET_ERROR(i32 %98)
  store i32 %99, i32* %10, align 4
  br label %171

100:                                              ; preds = %93
  %101 = load i8*, i8** %19, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %116

103:                                              ; preds = %100
  %104 = load i8*, i8** %19, align 8
  %105 = load i32, i32* @B_FALSE, align 4
  %106 = call i32 @zfs_prop_valid_keylocation(i8* %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @EINVAL, align 4
  %110 = call i32 @SET_ERROR(i32 %109)
  store i32 %110, i32* %10, align 4
  br label %171

111:                                              ; preds = %103
  %112 = load i8*, i8** %19, align 8
  %113 = call i32 @spa_strdup(i8* %112)
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %111, %100
  %117 = load i32*, i32** %17, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load i64, i64* %18, align 8
  %121 = load i64, i64* @WRAPPING_KEY_LEN, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32, i32* @EINVAL, align 4
  %125 = call i32 @SET_ERROR(i32 %124)
  store i32 %125, i32* %10, align 4
  br label %171

126:                                              ; preds = %119, %116
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @ZIO_CRYPT_ON, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i64, i64* @ZIO_CRYPT_ON_VALUE, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %132, %126
  %137 = load i32*, i32** %17, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %152

139:                                              ; preds = %136
  %140 = load i32*, i32** %17, align 8
  %141 = load i64, i64* %12, align 8
  %142 = load i64, i64* %13, align 8
  %143 = load i64, i64* %14, align 8
  %144 = call i32 @dsl_wrapping_key_create(i32* %140, i64 %141, i64 %142, i64 %143, i32** %16)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  br label %171

148:                                              ; preds = %139
  %149 = load i32*, i32** %16, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 2
  store i32* %149, i32** %151, align 8
  br label %152

152:                                              ; preds = %148, %136
  %153 = load i32*, i32** %7, align 8
  %154 = load i32, i32* @ZFS_PROP_ENCRYPTION, align 4
  %155 = call i32 @zfs_prop_to_name(i32 %154)
  %156 = call i32 @nvlist_remove_all(i32* %153, i32 %155)
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* @ZFS_PROP_KEYFORMAT, align 4
  %159 = call i32 @zfs_prop_to_name(i32 %158)
  %160 = call i32 @nvlist_remove_all(i32* %157, i32 %159)
  %161 = load i32*, i32** %7, align 8
  %162 = load i32, i32* @ZFS_PROP_PBKDF2_SALT, align 4
  %163 = call i32 @zfs_prop_to_name(i32 %162)
  %164 = call i32 @nvlist_remove_all(i32* %161, i32 %163)
  %165 = load i32*, i32** %7, align 8
  %166 = load i32, i32* @ZFS_PROP_PBKDF2_ITERS, align 4
  %167 = call i32 @zfs_prop_to_name(i32 %166)
  %168 = call i32 @nvlist_remove_all(i32* %165, i32 %167)
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %170 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* %169, %struct.TYPE_5__** %170, align 8
  store i32 0, i32* %5, align 4
  br label %186

171:                                              ; preds = %147, %123, %108, %97, %86, %72, %26
  %172 = load i32*, i32** %16, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32*, i32** %16, align 8
  %176 = call i32 @dsl_wrapping_key_free(i32* %175)
  br label %177

177:                                              ; preds = %174, %171
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %179 = icmp ne %struct.TYPE_5__* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %182 = call i32 @kmem_free(%struct.TYPE_5__* %181, i32 32)
  br label %183

183:                                              ; preds = %180, %177
  %184 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %184, align 8
  %185 = load i32, i32* %10, align 4
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %183, %152
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local %struct.TYPE_5__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i32 @nvlist_lookup_uint8_array(i32*, i8*, i32**, i64*) #1

declare dso_local i32 @zfs_prop_valid_keylocation(i8*, i32) #1

declare dso_local i32 @spa_strdup(i8*) #1

declare dso_local i32 @dsl_wrapping_key_create(i32*, i64, i64, i64, i32**) #1

declare dso_local i32 @nvlist_remove_all(i32*, i32) #1

declare dso_local i32 @dsl_wrapping_key_free(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
