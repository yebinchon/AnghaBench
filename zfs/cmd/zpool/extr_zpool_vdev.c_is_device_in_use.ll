; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_is_device_in_use.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_is_device_in_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@VDEV_TYPE_DISK = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_WHOLE_DISK = common dso_local global i32 0, align 4
@VDEV_TYPE_FILE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32)* @is_device_in_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_device_in_use(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %17, align 4
  %23 = load i32, i32* @MAXPATHLEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %18, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %19, align 8
  %27 = load i32, i32* @B_FALSE, align 4
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* @B_FALSE, align 4
  store i32 %28, i32* %21, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %31 = call i64 @nvlist_lookup_string(i32* %29, i32 %30, i8** %15)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @verify(i32 %33)
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %37 = call i64 @nvlist_lookup_nvlist_array(i32* %35, i32 %36, i32*** %12, i64* %14)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %108

39:                                               ; preds = %5
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %42 = call i64 @nvlist_lookup_string(i32* %40, i32 %41, i8** %16)
  %43 = icmp ne i64 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @verify(i32 %45)
  %47 = load i8*, i8** %15, align 8
  %48 = load i32, i32* @VDEV_TYPE_DISK, align 4
  %49 = call i64 @strcmp(i8* %47, i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %39
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* @ZPOOL_CONFIG_WHOLE_DISK, align 4
  %54 = call i32 @nvlist_lookup_uint64(i32* %52, i32 %53, i32* %20)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @verify(i32 %57)
  br label %59

59:                                               ; preds = %51, %39
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %59
  %63 = load i8*, i8** %16, align 8
  %64 = trunc i64 %24 to i32
  %65 = call i32 @strlcpy(i8* %26, i8* %63, i32 %64)
  %66 = load i32, i32* %20, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = trunc i64 %24 to i32
  %70 = call i32 @zfs_append_partition(i8* %26, i32 %69)
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %17, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %188

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %62
  %76 = load i32*, i32** %7, align 8
  %77 = call i64 @is_spare(i32* %76, i8* %26)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @B_FALSE, align 4
  store i32 %80, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %188

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %59
  %83 = load i8*, i8** %15, align 8
  %84 = load i32, i32* @VDEV_TYPE_DISK, align 4
  %85 = call i64 @strcmp(i8* %83, i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i8*, i8** %16, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %20, align 4
  %92 = call i32 @check_device(i8* %88, i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %17, align 4
  br label %104

93:                                               ; preds = %82
  %94 = load i8*, i8** %15, align 8
  %95 = load i32, i32* @VDEV_TYPE_FILE, align 4
  %96 = call i64 @strcmp(i8* %94, i32 %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i8*, i8** %16, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @check_file(i8* %99, i32 %100, i32 %101)
  store i32 %102, i32* %17, align 4
  br label %103

103:                                              ; preds = %98, %93
  br label %104

104:                                              ; preds = %103, %87
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %188

108:                                              ; preds = %5
  store i64 0, i64* %13, align 8
  br label %109

109:                                              ; preds = %127, %108
  %110 = load i64, i64* %13, align 8
  %111 = load i64, i64* %14, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %109
  %114 = load i32*, i32** %7, align 8
  %115 = load i32**, i32*** %12, align 8
  %116 = load i64, i64* %13, align 8
  %117 = getelementptr inbounds i32*, i32** %115, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @B_FALSE, align 4
  %122 = call i32 @is_device_in_use(i32* %114, i32* %118, i32 %119, i32 %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %113
  %125 = load i32, i32* @B_TRUE, align 4
  store i32 %125, i32* %21, align 4
  br label %126

126:                                              ; preds = %124, %113
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %13, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %13, align 8
  br label %109

130:                                              ; preds = %109
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %133 = call i64 @nvlist_lookup_nvlist_array(i32* %131, i32 %132, i32*** %12, i64* %14)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %130
  store i64 0, i64* %13, align 8
  br label %136

136:                                              ; preds = %154, %135
  %137 = load i64, i64* %13, align 8
  %138 = load i64, i64* %14, align 8
  %139 = icmp ult i64 %137, %138
  br i1 %139, label %140, label %157

140:                                              ; preds = %136
  %141 = load i32*, i32** %7, align 8
  %142 = load i32**, i32*** %12, align 8
  %143 = load i64, i64* %13, align 8
  %144 = getelementptr inbounds i32*, i32** %142, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @B_TRUE, align 4
  %149 = call i32 @is_device_in_use(i32* %141, i32* %145, i32 %146, i32 %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %140
  %152 = load i32, i32* @B_TRUE, align 4
  store i32 %152, i32* %21, align 4
  br label %153

153:                                              ; preds = %151, %140
  br label %154

154:                                              ; preds = %153
  %155 = load i64, i64* %13, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %13, align 8
  br label %136

157:                                              ; preds = %136
  br label %158

158:                                              ; preds = %157, %130
  %159 = load i32*, i32** %8, align 8
  %160 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %161 = call i64 @nvlist_lookup_nvlist_array(i32* %159, i32 %160, i32*** %12, i64* %14)
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %186

163:                                              ; preds = %158
  store i64 0, i64* %13, align 8
  br label %164

164:                                              ; preds = %182, %163
  %165 = load i64, i64* %13, align 8
  %166 = load i64, i64* %14, align 8
  %167 = icmp ult i64 %165, %166
  br i1 %167, label %168, label %185

168:                                              ; preds = %164
  %169 = load i32*, i32** %7, align 8
  %170 = load i32**, i32*** %12, align 8
  %171 = load i64, i64* %13, align 8
  %172 = getelementptr inbounds i32*, i32** %170, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @B_FALSE, align 4
  %177 = call i32 @is_device_in_use(i32* %169, i32* %173, i32 %174, i32 %175, i32 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %168
  %180 = load i32, i32* @B_TRUE, align 4
  store i32 %180, i32* %21, align 4
  br label %181

181:                                              ; preds = %179, %168
  br label %182

182:                                              ; preds = %181
  %183 = load i64, i64* %13, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %13, align 8
  br label %164

185:                                              ; preds = %164
  br label %186

186:                                              ; preds = %185, %158
  %187 = load i32, i32* %21, align 4
  store i32 %187, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %188

188:                                              ; preds = %186, %104, %79, %73
  %189 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %189)
  %190 = load i32, i32* %6, align 4
  ret i32 %190
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i32*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @zfs_append_partition(i8*, i32) #2

declare dso_local i64 @is_spare(i32*, i8*) #2

declare dso_local i32 @check_device(i8*, i32, i32, i32) #2

declare dso_local i32 @check_file(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
