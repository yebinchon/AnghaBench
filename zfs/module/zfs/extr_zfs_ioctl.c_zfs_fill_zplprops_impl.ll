; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_fill_zplprops_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_fill_zplprops_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@ZFS_PROP_UNDEFINED = common dso_local global i64 0, align 8
@DMU_OST_ZFS = common dso_local global i64 0, align 8
@ZFS_ERR_WRONG_PARENT = common dso_local global i32 0, align 4
@ZFS_PROP_VERSION = common dso_local global i32 0, align 4
@ZFS_PROP_NORMALIZE = common dso_local global i32 0, align 4
@ZFS_PROP_UTF8ONLY = common dso_local global i32 0, align 4
@ZFS_PROP_CASE = common dso_local global i32 0, align 4
@ZPL_VERSION_INITIAL = common dso_local global i64 0, align 8
@ZPL_VERSION = common dso_local global i64 0, align 8
@ZPL_VERSION_FUID = common dso_local global i64 0, align 8
@ZPL_VERSION_SA = common dso_local global i64 0, align 8
@ZPL_VERSION_NORMALIZATION = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@ZFS_CASE_INSENSITIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i32, i32, i32*, i32*, i32*)* @zfs_fill_zplprops_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_fill_zplprops_impl(%struct.TYPE_6__* %0, i64 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load i64, i64* @ZFS_PROP_UNDEFINED, align 8
  store i64 %20, i64* %16, align 8
  %21 = load i64, i64* @ZFS_PROP_UNDEFINED, align 8
  store i64 %21, i64* %17, align 8
  %22 = load i64, i64* @ZFS_PROP_UNDEFINED, align 8
  store i64 %22, i64* %18, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %7
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DMU_OST_ZFS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @ZFS_ERR_WRONG_PARENT, align 4
  %39 = call i32 @SET_ERROR(i32 %38)
  store i32 %39, i32* %8, align 4
  br label %192

40:                                               ; preds = %29, %7
  %41 = load i32*, i32** %13, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %72

43:                                               ; preds = %40
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* @ZFS_PROP_VERSION, align 4
  %46 = call i32 @zfs_prop_to_name(i32 %45)
  %47 = call i32 @nvlist_lookup_uint64(i32* %44, i32 %46, i64* %10)
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* @ZFS_PROP_NORMALIZE, align 4
  %50 = call i32 @zfs_prop_to_name(i32 %49)
  %51 = call i32 @nvlist_lookup_uint64(i32* %48, i32 %50, i64* %17)
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* @ZFS_PROP_NORMALIZE, align 4
  %54 = call i32 @zfs_prop_to_name(i32 %53)
  %55 = call i32 @nvlist_remove_all(i32* %52, i32 %54)
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* @ZFS_PROP_UTF8ONLY, align 4
  %58 = call i32 @zfs_prop_to_name(i32 %57)
  %59 = call i32 @nvlist_lookup_uint64(i32* %56, i32 %58, i64* %18)
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* @ZFS_PROP_UTF8ONLY, align 4
  %62 = call i32 @zfs_prop_to_name(i32 %61)
  %63 = call i32 @nvlist_remove_all(i32* %60, i32 %62)
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* @ZFS_PROP_CASE, align 4
  %66 = call i32 @zfs_prop_to_name(i32 %65)
  %67 = call i32 @nvlist_lookup_uint64(i32* %64, i32 %66, i64* %16)
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* @ZFS_PROP_CASE, align 4
  %70 = call i32 @zfs_prop_to_name(i32 %69)
  %71 = call i32 @nvlist_remove_all(i32* %68, i32 %70)
  br label %72

72:                                               ; preds = %43, %40
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @ZPL_VERSION_INITIAL, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %110, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @ZPL_VERSION, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %110, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* @ZPL_VERSION_FUID, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %110

87:                                               ; preds = %84, %80
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* @ZPL_VERSION_SA, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %91, %87
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* @ZPL_VERSION_NORMALIZATION, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %94
  %99 = load i64, i64* %17, align 8
  %100 = load i64, i64* @ZFS_PROP_UNDEFINED, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %110, label %102

102:                                              ; preds = %98
  %103 = load i64, i64* %18, align 8
  %104 = load i64, i64* @ZFS_PROP_UNDEFINED, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i64, i64* %16, align 8
  %108 = load i64, i64* @ZFS_PROP_UNDEFINED, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106, %102, %98, %91, %84, %76, %72
  %111 = load i32, i32* @ENOTSUP, align 4
  %112 = call i32 @SET_ERROR(i32 %111)
  store i32 %112, i32* %8, align 4
  br label %192

113:                                              ; preds = %106, %94
  %114 = load i32*, i32** %14, align 8
  %115 = load i32, i32* @ZFS_PROP_VERSION, align 4
  %116 = call i32 @zfs_prop_to_name(i32 %115)
  %117 = load i64, i64* %10, align 8
  %118 = call i64 @nvlist_add_uint64(i32* %114, i32 %116, i64 %117)
  %119 = icmp eq i64 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @VERIFY(i32 %120)
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* @ZFS_PROP_UNDEFINED, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %113
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %127 = load i32, i32* @ZFS_PROP_NORMALIZE, align 4
  %128 = call i32 @zfs_get_zplprop(%struct.TYPE_6__* %126, i32 %127, i64* %17)
  store i32 %128, i32* %19, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i32, i32* %19, align 4
  store i32 %131, i32* %8, align 4
  br label %192

132:                                              ; preds = %125, %113
  %133 = load i32*, i32** %14, align 8
  %134 = load i32, i32* @ZFS_PROP_NORMALIZE, align 4
  %135 = call i32 @zfs_prop_to_name(i32 %134)
  %136 = load i64, i64* %17, align 8
  %137 = call i64 @nvlist_add_uint64(i32* %133, i32 %135, i64 %136)
  %138 = icmp eq i64 %137, 0
  %139 = zext i1 %138 to i32
  %140 = call i32 @VERIFY(i32 %139)
  %141 = load i64, i64* %17, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %132
  store i64 1, i64* %18, align 8
  br label %144

144:                                              ; preds = %143, %132
  %145 = load i64, i64* %18, align 8
  %146 = load i64, i64* @ZFS_PROP_UNDEFINED, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %150 = load i32, i32* @ZFS_PROP_UTF8ONLY, align 4
  %151 = call i32 @zfs_get_zplprop(%struct.TYPE_6__* %149, i32 %150, i64* %18)
  store i32 %151, i32* %19, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i32, i32* %19, align 4
  store i32 %154, i32* %8, align 4
  br label %192

155:                                              ; preds = %148, %144
  %156 = load i32*, i32** %14, align 8
  %157 = load i32, i32* @ZFS_PROP_UTF8ONLY, align 4
  %158 = call i32 @zfs_prop_to_name(i32 %157)
  %159 = load i64, i64* %18, align 8
  %160 = call i64 @nvlist_add_uint64(i32* %156, i32 %158, i64 %159)
  %161 = icmp eq i64 %160, 0
  %162 = zext i1 %161 to i32
  %163 = call i32 @VERIFY(i32 %162)
  %164 = load i64, i64* %16, align 8
  %165 = load i64, i64* @ZFS_PROP_UNDEFINED, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %155
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %169 = load i32, i32* @ZFS_PROP_CASE, align 4
  %170 = call i32 @zfs_get_zplprop(%struct.TYPE_6__* %168, i32 %169, i64* %16)
  store i32 %170, i32* %19, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* %19, align 4
  store i32 %173, i32* %8, align 4
  br label %192

174:                                              ; preds = %167, %155
  %175 = load i32*, i32** %14, align 8
  %176 = load i32, i32* @ZFS_PROP_CASE, align 4
  %177 = call i32 @zfs_prop_to_name(i32 %176)
  %178 = load i64, i64* %16, align 8
  %179 = call i64 @nvlist_add_uint64(i32* %175, i32 %177, i64 %178)
  %180 = icmp eq i64 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i32 @VERIFY(i32 %181)
  %183 = load i32*, i32** %15, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %191

185:                                              ; preds = %174
  %186 = load i64, i64* %16, align 8
  %187 = load i64, i64* @ZFS_CASE_INSENSITIVE, align 8
  %188 = icmp eq i64 %186, %187
  %189 = zext i1 %188 to i32
  %190 = load i32*, i32** %15, align 8
  store i32 %189, i32* %190, align 4
  br label %191

191:                                              ; preds = %185, %174
  store i32 0, i32* %8, align 4
  br label %192

192:                                              ; preds = %191, %172, %153, %130, %110, %37
  %193 = load i32, i32* %8, align 4
  ret i32 %193
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @nvlist_remove_all(i32*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i32 @zfs_get_zplprop(%struct.TYPE_6__*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
