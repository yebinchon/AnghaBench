; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_getacl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_getacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i64, i32, i8* }
%struct.TYPE_17__ = type { i64, i32, i32, i64 }
%struct.TYPE_18__ = type { i8*, i32 }

@VSA_ACE = common dso_local global i32 0, align 4
@VSA_ACECNT = common dso_local global i32 0, align 4
@VSA_ACE_ACLFLAGS = common dso_local global i32 0, align 4
@VSA_ACE_ALLTYPES = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@ACE_READ_ACL = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_ACL_OBJ_ACE = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZFS_ACL_VERSION_FUID = common dso_local global i64 0, align 8
@ZFS_ACL_DEFAULTED = common dso_local global i32 0, align 4
@ACL_DEFAULTED = common dso_local global i32 0, align 4
@ZFS_ACL_PROTECTED = common dso_local global i32 0, align 4
@ACL_PROTECTED = common dso_local global i32 0, align 4
@ZFS_ACL_AUTO_INHERIT = common dso_local global i32 0, align 4
@ACL_AUTO_INHERIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_getacl(%struct.TYPE_16__* %0, %struct.TYPE_19__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_18__*, align 8
  %22 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @VSA_ACE, align 4
  %27 = load i32, i32* @VSA_ACECNT, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @VSA_ACE_ACLFLAGS, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @VSA_ACE_ALLTYPES, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %25, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %4
  %37 = load i32, i32* @ENOSYS, align 4
  %38 = call i32 @SET_ERROR(i32 %37)
  store i32 %38, i32* %5, align 4
  br label %246

39:                                               ; preds = %4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = load i32, i32* @ACE_READ_ACL, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @zfs_zaccess(%struct.TYPE_16__* %40, i32 %41, i32 0, i32 %42, i32* %43)
  store i32 %44, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %5, align 4
  br label %246

48:                                               ; preds = %39
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = call i32 @mutex_enter(i32* %50)
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %53 = load i32, i32* @B_FALSE, align 4
  %54 = load i32, i32* @B_FALSE, align 4
  %55 = call i32 @zfs_acl_node_read(%struct.TYPE_16__* %52, i32 %53, %struct.TYPE_17__** %10, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = call i32 @mutex_exit(i32* %60)
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %5, align 4
  br label %246

63:                                               ; preds = %48
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ZFS_ACL_OBJ_ACE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %63
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @VSA_ACE_ALLTYPES, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %94, label %75

75:                                               ; preds = %70
  store i8* null, i8** %15, align 8
  br label %76

76:                                               ; preds = %89, %83, %75
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = call i8* @zfs_acl_next_ace(%struct.TYPE_17__* %77, i8* %78, i32* %16, i32* %17, i32* %19, i32* %18)
  store i8* %79, i8** %15, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load i32, i32* %18, align 4
  switch i32 %82, label %86 [
    i32 131, label %83
    i32 130, label %83
    i32 128, label %83
    i32 129, label %83
  ]

83:                                               ; preds = %81, %81, %81, %81
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %76

86:                                               ; preds = %81
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %86
  br label %76

90:                                               ; preds = %76
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %99

94:                                               ; preds = %70, %63
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %94, %90
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @VSA_ACECNT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %104, %99
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @VSA_ACE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %195

113:                                              ; preds = %108
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 4, %118
  %120 = add i64 %116, %119
  store i64 %120, i64* %20, align 8
  %121 = load i64, i64* %20, align 8
  %122 = load i32, i32* @KM_SLEEP, align 4
  %123 = call i8* @kmem_alloc(i64 %121, i32 %122)
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 4
  store i8* %123, i8** %125, align 8
  %126 = load i64, i64* %20, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 2
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @ZFS_ACL_VERSION_FUID, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %149

134:                                              ; preds = %113
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %136 = call i32 @ZTOZSB(%struct.TYPE_16__* %135)
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %138 = load i32*, i32** %9, align 8
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 4
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @VSA_ACE_ALLTYPES, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = call i32 @zfs_copy_fuid_2_ace(i32 %136, %struct.TYPE_17__* %137, i32* %138, i8* %141, i32 %147)
  br label %194

149:                                              ; preds = %113
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 4
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %22, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 2
  %155 = call %struct.TYPE_18__* @list_head(i32* %154)
  store %struct.TYPE_18__* %155, %struct.TYPE_18__** %21, align 8
  br label %156

156:                                              ; preds = %175, %149
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %158 = icmp ne %struct.TYPE_18__* %157, null
  br i1 %158, label %159, label %180

159:                                              ; preds = %156
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i8*, i8** %22, align 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @bcopy(i32 %162, i8* %163, i8* %166)
  %168 = load i8*, i8** %22, align 8
  %169 = ptrtoint i8* %168 to i32
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = sext i32 %169 to i64
  %174 = getelementptr i8, i8* %172, i64 %173
  store i8* %174, i8** %22, align 8
  br label %175

175:                                              ; preds = %159
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %179 = call %struct.TYPE_18__* @list_next(i32* %177, %struct.TYPE_18__* %178)
  store %struct.TYPE_18__* %179, %struct.TYPE_18__** %21, align 8
  br label %156

180:                                              ; preds = %156
  %181 = load i8*, i8** %22, align 8
  %182 = ptrtoint i8* %181 to i32
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 4
  %185 = load i8*, i8** %184, align 8
  %186 = ptrtoint i8* %185 to i32
  %187 = sub nsw i32 %182, %186
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %187, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @ASSERT(i32 %192)
  br label %194

194:                                              ; preds = %180, %134
  br label %195

195:                                              ; preds = %194, %108
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* @VSA_ACE_ACLFLAGS, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %242

200:                                              ; preds = %195
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 3
  store i32 0, i32* %202, align 8
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @ZFS_ACL_DEFAULTED, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %200
  %210 = load i32, i32* @ACL_DEFAULTED, align 4
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 8
  br label %215

215:                                              ; preds = %209, %200
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @ZFS_ACL_PROTECTED, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %215
  %223 = load i32, i32* @ACL_PROTECTED, align 4
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 8
  br label %228

228:                                              ; preds = %222, %215
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @ZFS_ACL_AUTO_INHERIT, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %228
  %236 = load i32, i32* @ACL_AUTO_INHERIT, align 4
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 8
  br label %241

241:                                              ; preds = %235, %228
  br label %242

242:                                              ; preds = %241, %195
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 1
  %245 = call i32 @mutex_exit(i32* %244)
  store i32 0, i32* %5, align 4
  br label %246

246:                                              ; preds = %242, %58, %46, %36
  %247 = load i32, i32* %5, align 4
  ret i32 %247
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zfs_zaccess(%struct.TYPE_16__*, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @zfs_acl_node_read(%struct.TYPE_16__*, i32, %struct.TYPE_17__**, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i8* @zfs_acl_next_ace(%struct.TYPE_17__*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @kmem_alloc(i64, i32) #1

declare dso_local i32 @zfs_copy_fuid_2_ace(i32, %struct.TYPE_17__*, i32*, i8*, i32) #1

declare dso_local i32 @ZTOZSB(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_18__* @list_head(i32*) #1

declare dso_local i32 @bcopy(i32, i8*, i8*) #1

declare dso_local %struct.TYPE_18__* @list_next(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
