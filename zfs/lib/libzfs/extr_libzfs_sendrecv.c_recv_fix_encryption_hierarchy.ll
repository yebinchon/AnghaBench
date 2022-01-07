; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_recv_fix_encryption_hierarchy.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_recv_fix_encryption_hierarchy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"fss\00", align 1
@MAXNAMELEN = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"snaps\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"props\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"is_encroot\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@ZFS_PROP_ENCRYPTION = common dso_local global i32 0, align 4
@ZIO_CRYPT_OFF = common dso_local global i64 0, align 8
@DCP_CMD_FORCE_NEW_KEY = common dso_local global i32 0, align 4
@ZFS_PROP_KEYLOCATION = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@DCP_CMD_FORCE_INHERIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32*)* @recv_fix_encryption_hierarchy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_fix_encryption_hierarchy(i32* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %11, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i64 @nvlist_lookup_nvlist(i32* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32** %12)
  %31 = icmp eq i64 0, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @VERIFY(i32 %32)
  br label %34

34:                                               ; preds = %205, %202, %4
  %35 = load i32*, i32** %12, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32* @nvlist_next_nvpair(i32* %35, i32* %36)
  store i32* %37, i32** %11, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %206

39:                                               ; preds = %34
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i8* null, i8** %23, align 8
  %40 = load i32, i32* @MAXNAMELEN, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %24, align 8
  %43 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %25, align 8
  %44 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca i8, i64 %45, align 16
  store i64 %45, i64* %26, align 8
  %47 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 0, i8* %47, align 16
  %48 = load i32*, i32** %11, align 8
  %49 = call i64 @nvpair_value_nvlist(i32* %48, i32** %17)
  %50 = icmp eq i64 0, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @VERIFY(i32 %51)
  %53 = load i32*, i32** %17, align 8
  %54 = call i64 @nvlist_lookup_nvlist(i32* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32** %15)
  %55 = icmp eq i64 0, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @VERIFY(i32 %56)
  %58 = load i32*, i32** %17, align 8
  %59 = call i64 @nvlist_lookup_nvlist(i32* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** %16)
  %60 = icmp eq i64 0, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @VERIFY(i32 %61)
  %63 = load i32*, i32** %17, align 8
  %64 = call i32 @nvlist_exists(i32* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 %64, i32* %21, align 4
  %65 = load i32, i32* @ENOENT, align 4
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %85, %39
  %67 = load i32*, i32** %15, align 8
  %68 = load i32*, i32** %18, align 8
  %69 = call i32* @nvlist_next_nvpair(i32* %67, i32* %68)
  store i32* %69, i32** %18, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = load i32*, i32** %18, align 8
  %73 = call i64 @nvpair_value_uint64(i32* %72, i64* %27)
  %74 = icmp eq i64 0, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @VERIFY(i32 %75)
  %77 = load i32*, i32** %6, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load i64, i64* %27, align 8
  %80 = load i32, i32* @B_FALSE, align 4
  %81 = call i32 @guid_to_name(i32* %77, i8* %78, i64 %79, i32 %80, i8* %46)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %86

85:                                               ; preds = %71
  br label %66

86:                                               ; preds = %84, %66
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 2, i32* %28, align 4
  br label %202

90:                                               ; preds = %86
  %91 = call i8* @strchr(i8* %46, i8 signext 64)
  store i8* %91, i8** %22, align 8
  %92 = load i8*, i8** %22, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i8*, i8** %22, align 8
  store i8 0, i8* %95, align 1
  br label %96

96:                                               ; preds = %94, %90
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %99 = call %struct.TYPE_11__* @zfs_open(i32* %97, i8* %46, i32 %98)
  store %struct.TYPE_11__* %99, %struct.TYPE_11__** %13, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %101 = icmp eq %struct.TYPE_11__* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @ENOENT, align 4
  store i32 %103, i32* %10, align 4
  store i32 6, i32* %28, align 4
  br label %202

104:                                              ; preds = %96
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %106 = load i32, i32* @ZFS_PROP_ENCRYPTION, align 4
  %107 = call i64 @zfs_prop_get_int(%struct.TYPE_11__* %105, i32 %106)
  store i64 %107, i64* %14, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %20, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %118 = call i32 @zfs_crypto_get_encryption_root(%struct.TYPE_11__* %117, i32* %19, i32* null)
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* @ZIO_CRYPT_OFF, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %104
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %124 = call i32 @zfs_close(%struct.TYPE_11__* %123)
  store i32 2, i32* %28, align 4
  br label %202

125:                                              ; preds = %104
  %126 = load i32, i32* %21, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %180

128:                                              ; preds = %125
  %129 = load i32, i32* %20, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %19, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* @DCP_CMD_FORCE_NEW_KEY, align 4
  %136 = call i32 @lzc_change_key(i8* %46, i32 %135, i32* null, i32* null, i32 0)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %141 = call i32 @zfs_close(%struct.TYPE_11__* %140)
  store i32 6, i32* %28, align 4
  br label %202

142:                                              ; preds = %134
  br label %143

143:                                              ; preds = %142, %131, %128
  %144 = load i32*, i32** %16, align 8
  %145 = load i32, i32* @ZFS_PROP_KEYLOCATION, align 4
  %146 = call i32 @zfs_prop_to_name(i32 %145)
  %147 = call i64 @nvlist_lookup_string(i32* %144, i32 %146, i8** %23)
  %148 = icmp eq i64 0, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @VERIFY(i32 %149)
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %152 = call i32 @zfs_refresh_properties(%struct.TYPE_11__* %151)
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %154 = load i32, i32* @ZFS_PROP_KEYLOCATION, align 4
  %155 = trunc i64 %41 to i32
  %156 = load i32, i32* @B_TRUE, align 4
  %157 = call i32 @zfs_prop_get(%struct.TYPE_11__* %153, i32 %154, i8* %43, i32 %155, i32* null, i32* null, i32 0, i32 %156)
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %143
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %162 = call i32 @zfs_close(%struct.TYPE_11__* %161)
  store i32 6, i32* %28, align 4
  br label %202

163:                                              ; preds = %143
  %164 = load i8*, i8** %23, align 8
  %165 = call i64 @strcmp(i8* %43, i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %163
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %169 = load i32, i32* @ZFS_PROP_KEYLOCATION, align 4
  %170 = call i32 @zfs_prop_to_name(i32 %169)
  %171 = load i8*, i8** %23, align 8
  %172 = call i32 @zfs_prop_set(%struct.TYPE_11__* %168, i32 %170, i8* %171)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %167
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %177 = call i32 @zfs_close(%struct.TYPE_11__* %176)
  store i32 6, i32* %28, align 4
  br label %202

178:                                              ; preds = %167
  br label %179

179:                                              ; preds = %178, %163
  br label %180

180:                                              ; preds = %179, %125
  %181 = load i32, i32* %21, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %199, label %183

183:                                              ; preds = %180
  %184 = load i32, i32* %19, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %199

186:                                              ; preds = %183
  %187 = load i8*, i8** %7, align 8
  %188 = call i64 @strcmp(i8* %187, i8* %46)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %186
  %191 = load i32, i32* @DCP_CMD_FORCE_INHERIT, align 4
  %192 = call i32 @lzc_change_key(i8* %46, i32 %191, i32* null, i32* null, i32 0)
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %197 = call i32 @zfs_close(%struct.TYPE_11__* %196)
  store i32 6, i32* %28, align 4
  br label %202

198:                                              ; preds = %190
  br label %199

199:                                              ; preds = %198, %186, %183, %180
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %201 = call i32 @zfs_close(%struct.TYPE_11__* %200)
  store i32 0, i32* %28, align 4
  br label %202

202:                                              ; preds = %195, %175, %160, %139, %102, %199, %122, %89
  %203 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %203)
  %204 = load i32, i32* %28, align 4
  switch i32 %204, label %211 [
    i32 0, label %205
    i32 2, label %34
    i32 6, label %207
  ]

205:                                              ; preds = %202
  br label %34

206:                                              ; preds = %34
  store i32 0, i32* %5, align 4
  br label %209

207:                                              ; preds = %202
  %208 = load i32, i32* %10, align 4
  store i32 %208, i32* %5, align 4
  br label %209

209:                                              ; preds = %207, %206
  %210 = load i32, i32* %5, align 4
  ret i32 %210

211:                                              ; preds = %202
  unreachable
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i8*, i32**) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i32 @nvlist_exists(i32*, i8*) #1

declare dso_local i64 @nvpair_value_uint64(i32*, i64*) #1

declare dso_local i32 @guid_to_name(i32*, i8*, i64, i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_11__* @zfs_open(i32*, i8*, i32) #1

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @zfs_crypto_get_encryption_root(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @zfs_close(%struct.TYPE_11__*) #1

declare dso_local i32 @lzc_change_key(i8*, i32, i32*, i32*, i32) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @zfs_refresh_properties(%struct.TYPE_11__*) #1

declare dso_local i32 @zfs_prop_get(%struct.TYPE_11__*, i32, i8*, i32, i32*, i32*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @zfs_prop_set(%struct.TYPE_11__*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
