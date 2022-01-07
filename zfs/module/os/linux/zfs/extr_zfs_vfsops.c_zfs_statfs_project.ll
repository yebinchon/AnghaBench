; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfs_statfs_project.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfs_statfs_project.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i64, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.kstatfs = type { i32, i32, i32, i32, i32 }

@DMU_OBJACCT_PREFIX_LEN = common dso_local global i32 0, align 4
@DMU_OBJACCT_PREFIX = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DMU_PROJECTUSED_OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*, %struct.kstatfs*, i32)* @zfs_statfs_project to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_statfs_project(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, %struct.kstatfs* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.kstatfs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store %struct.kstatfs* %2, %struct.kstatfs** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* @DMU_OBJACCT_PREFIX_LEN, align 4
  %20 = add nsw i32 20, %19
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = load i32, i32* @DMU_OBJACCT_PREFIX_LEN, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* @DMU_OBJACCT_PREFIX, align 4
  %26 = load i32, i32* @DMU_OBJACCT_PREFIX_LEN, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i32 @strlcpy(i8* %23, i32 %25, i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %23, i64 %34
  %36 = load i32, i32* @B_FALSE, align 4
  %37 = call i32 @id_to_fuidstr(%struct.TYPE_7__* %29, i32* null, i32 %32, i8* %35, i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %197

42:                                               ; preds = %4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %135

48:                                               ; preds = %42
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %23, i64 %56
  %58 = call i32 @zap_lookup(i32 %51, i64 %54, i8* %57, i32 8, i32 1, i32* %13)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @ENOENT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  br label %135

63:                                               ; preds = %48
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %197

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* @DMU_PROJECTUSED_OBJECT, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %23, i64 %75
  %77 = call i32 @zap_lookup(i32 %72, i64 %73, i8* %76, i32 8, i32 1, i32* %14)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* @ENOENT, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %69
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @sa_object_size(i32 %87, i32* %17, i32* %18)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %84
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %17, align 4
  br label %100

100:                                              ; preds = %96, %84
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %18, align 4
  %103 = mul nsw i32 %101, %102
  store i32 %103, i32* %14, align 4
  br label %110

104:                                              ; preds = %69
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %197

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %109, %100
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %9, align 4
  %113 = ashr i32 %111, %112
  %114 = load %struct.kstatfs*, %struct.kstatfs** %8, align 8
  %115 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %110
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %14, align 4
  %122 = sub nsw i32 %120, %121
  %123 = load i32, i32* %9, align 4
  %124 = ashr i32 %122, %123
  br label %126

125:                                              ; preds = %110
  br label %126

126:                                              ; preds = %125, %119
  %127 = phi i32 [ %124, %119 ], [ 0, %125 ]
  %128 = load %struct.kstatfs*, %struct.kstatfs** %8, align 8
  %129 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.kstatfs*, %struct.kstatfs** %8, align 8
  %131 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.kstatfs*, %struct.kstatfs** %8, align 8
  %134 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %126, %62, %47
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %197

141:                                              ; preds = %135
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %23, i64 %149
  %151 = call i32 @zap_lookup(i32 %144, i64 %147, i8* %150, i32 8, i32 1, i32* %13)
  store i32 %151, i32* %15, align 4
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* @ENOENT, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %141
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %197

156:                                              ; preds = %141
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = load i32, i32* %15, align 4
  store i32 %160, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %197

161:                                              ; preds = %156
  br label %162

162:                                              ; preds = %161
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = load i64, i64* @DMU_PROJECTUSED_OBJECT, align 8
  %167 = call i32 @zap_lookup(i32 %165, i64 %166, i8* %23, i32 8, i32 1, i32* %14)
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* @ENOENT, align 4
  %170 = icmp eq i32 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i64 @unlikely(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %162
  store i32 1, i32* %14, align 4
  br label %181

175:                                              ; preds = %162
  %176 = load i32, i32* %15, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = load i32, i32* %15, align 4
  store i32 %179, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %197

180:                                              ; preds = %175
  br label %181

181:                                              ; preds = %180, %174
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.kstatfs*, %struct.kstatfs** %8, align 8
  %184 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* %14, align 4
  %187 = icmp sgt i32 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %181
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %14, align 4
  %191 = sub nsw i32 %189, %190
  br label %193

192:                                              ; preds = %181
  br label %193

193:                                              ; preds = %192, %188
  %194 = phi i32 [ %191, %188 ], [ 0, %192 ]
  %195 = load %struct.kstatfs*, %struct.kstatfs** %8, align 8
  %196 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %197

197:                                              ; preds = %193, %178, %159, %155, %140, %107, %66, %40
  %198 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @id_to_fuidstr(%struct.TYPE_7__*, i32*, i32, i8*, i32) #2

declare dso_local i32 @zap_lookup(i32, i64, i8*, i32, i32, i32*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @sa_object_size(i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
