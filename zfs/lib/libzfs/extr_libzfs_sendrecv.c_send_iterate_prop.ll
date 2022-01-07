; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_send_iterate_prop.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_send_iterate_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32* }

@ZPROP_INVAL = common dso_local global i64 0, align 8
@ZFS_PROP_QUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_RESERVATION = common dso_local global i64 0, align 8
@ZFS_PROP_REFQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_REFRESERVATION = common dso_local global i64 0, align 8
@ZPROP_VALUE = common dso_local global i32 0, align 4
@ZFS_TYPE_SNAPSHOT = common dso_local global i64 0, align 8
@ZPROP_SOURCE = common dso_local global i32 0, align 4
@ZPROP_SOURCE_VAL_RECVD = common dso_local global i32 0, align 4
@PROP_TYPE_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64, i32*)* @send_iterate_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_iterate_prop(%struct.TYPE_4__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = call i32* @zfs_get_recvd_props(%struct.TYPE_4__* %20)
  store i32* %21, i32** %7, align 8
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %7, align 8
  br label %26

26:                                               ; preds = %22, %19
  br label %27

27:                                               ; preds = %162, %123, %110, %102, %84, %49, %44, %26
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32* @nvlist_next_nvpair(i32* %28, i32* %29)
  store i32* %30, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %163

32:                                               ; preds = %27
  %33 = load i32*, i32** %8, align 8
  %34 = call i8* @nvpair_name(i32* %33)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i64 @zfs_name_to_prop(i8* %35)
  store i64 %36, i64* %10, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @zfs_prop_user(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %32
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @ZPROP_INVAL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %27

45:                                               ; preds = %40
  %46 = load i64, i64* %10, align 8
  %47 = call i64 @zfs_prop_readonly(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %27

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i32*, i32** %8, align 8
  %53 = call i64 @nvpair_value_nvlist(i32* %52, i32** %11)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @verify(i32 %55)
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @ZFS_PROP_QUOTA, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %72, label %60

60:                                               ; preds = %51
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @ZFS_PROP_RESERVATION, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @ZFS_PROP_REFQUOTA, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* @ZFS_PROP_REFRESERVATION, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %105

72:                                               ; preds = %68, %64, %60, %51
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* @ZPROP_VALUE, align 4
  %75 = call i64 @nvlist_lookup_uint64(i32* %73, i32 %74, i32* %13)
  %76 = icmp eq i64 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @verify(i32 %77)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ZFS_TYPE_SNAPSHOT, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  br label %27

85:                                               ; preds = %72
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* @ZPROP_SOURCE, align 4
  %88 = call i64 @nvlist_lookup_string(i32* %86, i32 %87, i8** %12)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %85
  %91 = load i8*, i8** %12, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @strcmp(i8* %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load i8*, i8** %12, align 8
  %99 = load i32, i32* @ZPROP_SOURCE_VAL_RECVD, align 4
  %100 = call i64 @strcmp(i8* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %27

103:                                              ; preds = %97, %90
  br label %104

104:                                              ; preds = %103, %85
  br label %125

105:                                              ; preds = %68
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* @ZPROP_SOURCE, align 4
  %108 = call i64 @nvlist_lookup_string(i32* %106, i32 %107, i8** %14)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %27

111:                                              ; preds = %105
  %112 = load i8*, i8** %14, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @strcmp(i8* %112, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load i8*, i8** %14, align 8
  %120 = load i32, i32* @ZPROP_SOURCE_VAL_RECVD, align 4
  %121 = call i64 @strcmp(i8* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %27

124:                                              ; preds = %118, %111
  br label %125

125:                                              ; preds = %124, %104
  %126 = load i8*, i8** %9, align 8
  %127 = call i64 @zfs_prop_user(i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %125
  %130 = load i64, i64* %10, align 8
  %131 = call i64 @zfs_prop_get_type(i64 %130)
  %132 = load i64, i64* @PROP_TYPE_STRING, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %129, %125
  %135 = load i32*, i32** %11, align 8
  %136 = load i32, i32* @ZPROP_VALUE, align 4
  %137 = call i64 @nvlist_lookup_string(i32* %135, i32 %136, i8** %15)
  %138 = icmp eq i64 %137, 0
  %139 = zext i1 %138 to i32
  %140 = call i32 @verify(i32 %139)
  %141 = load i32*, i32** %6, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = load i8*, i8** %15, align 8
  %144 = call i64 @nvlist_add_string(i32* %141, i8* %142, i8* %143)
  %145 = icmp eq i64 0, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @VERIFY(i32 %146)
  br label %162

148:                                              ; preds = %129
  %149 = load i32*, i32** %11, align 8
  %150 = load i32, i32* @ZPROP_VALUE, align 4
  %151 = call i64 @nvlist_lookup_uint64(i32* %149, i32 %150, i32* %16)
  %152 = icmp eq i64 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @verify(i32 %153)
  %155 = load i32*, i32** %6, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = load i32, i32* %16, align 4
  %158 = call i64 @nvlist_add_uint64(i32* %155, i8* %156, i32 %157)
  %159 = icmp eq i64 0, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @VERIFY(i32 %160)
  br label %162

162:                                              ; preds = %148, %134
  br label %27

163:                                              ; preds = %27
  ret void
}

declare dso_local i32* @zfs_get_recvd_props(%struct.TYPE_4__*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i64 @zfs_name_to_prop(i8*) #1

declare dso_local i64 @zfs_prop_user(i8*) #1

declare dso_local i64 @zfs_prop_readonly(i64) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @zfs_prop_get_type(i64) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
