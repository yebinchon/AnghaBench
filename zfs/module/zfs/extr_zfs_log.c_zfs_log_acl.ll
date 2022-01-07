; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_log.c_zfs_log_acl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_log.c_zfs_log_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i64 }
%struct.TYPE_18__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i32, i8*, i8*, i32, i32 }
%struct.TYPE_15__ = type { i64 }

@ZPL_VERSION_FUID = common dso_local global i64 0, align 8
@TX_ACL_V0 = common dso_local global i32 0, align 4
@TX_ACL = common dso_local global i32 0, align 4
@VSA_ACE_ACLFLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_log_acl(i32* %0, i32* %1, %struct.TYPE_16__* %2, %struct.TYPE_18__* %3, %struct.TYPE_17__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %10, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %17, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @zil_replaying(i32* %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %5
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %5
  br label %206

32:                                               ; preds = %26
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %34 = call %struct.TYPE_15__* @ZTOZSB(%struct.TYPE_16__* %33)
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ZPL_VERSION_FUID, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @TX_ACL_V0, align 4
  br label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @TX_ACL, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @TX_ACL, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 40, i32* %15, align 4
  br label %50

49:                                               ; preds = %43
  store i32 4, i32* %15, align 4
  br label %50

50:                                               ; preds = %49, %48
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @TX_ACL, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i64, i64* %17, align 8
  %58 = call i64 @ZIL_ACE_LENGTH(i64 %57)
  br label %61

59:                                               ; preds = %50
  %60 = load i64, i64* %17, align 8
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi i64 [ %58, %56 ], [ %60, %59 ]
  %63 = add i64 %52, %62
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %65 = icmp ne %struct.TYPE_17__* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  br label %71

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %66
  %72 = phi i32 [ %69, %66 ], [ 0, %70 ]
  %73 = sext i32 %72 to i64
  %74 = add i64 %63, %73
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %76 = icmp ne %struct.TYPE_17__* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  br label %82

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %77
  %83 = phi i32 [ %80, %77 ], [ 0, %81 ]
  %84 = sext i32 %83 to i64
  %85 = mul i64 8, %84
  %86 = add i64 %74, %85
  store i64 %86, i64* %16, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load i64, i64* %16, align 8
  %89 = call %struct.TYPE_20__* @zil_itx_create(i32 %87, i64 %88)
  store %struct.TYPE_20__* %89, %struct.TYPE_20__** %11, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = bitcast i32* %91 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %92, %struct.TYPE_19__** %13, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* @TX_ACL, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %145

101:                                              ; preds = %82
  %102 = load i64, i64* %17, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %106 = icmp ne %struct.TYPE_17__* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  br label %112

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %107
  %113 = phi i32 [ %110, %107 ], [ 0, %111 ]
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %117 = icmp ne %struct.TYPE_17__* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  br label %123

122:                                              ; preds = %112
  br label %123

123:                                              ; preds = %122, %118
  %124 = phi i32 [ %121, %118 ], [ 0, %122 ]
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @VSA_ACE_ACLFLAGS, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %123
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 3
  store i8* %138, i8** %140, align 8
  br label %144

141:                                              ; preds = %123
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 3
  store i8* null, i8** %143, align 8
  br label %144

144:                                              ; preds = %141, %133
  br label %145

145:                                              ; preds = %144, %82
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* @TX_ACL_V0, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %145
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %158 = bitcast %struct.TYPE_19__* %157 to i32*
  store i32* %158, i32** %12, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %12, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = bitcast i32* %163 to i8*
  %165 = load i64, i64* %17, align 8
  %166 = call i32 @bcopy(i32 %161, i8* %164, i64 %165)
  br label %194

167:                                              ; preds = %145
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i64 1
  %170 = bitcast %struct.TYPE_19__* %169 to i8*
  store i8* %170, i8** %18, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load i8*, i8** %18, align 8
  %175 = load i64, i64* %17, align 8
  %176 = call i32 @bcopy(i32 %173, i8* %174, i64 %175)
  %177 = load i8*, i8** %18, align 8
  %178 = ptrtoint i8* %177 to i32
  %179 = sext i32 %178 to i64
  %180 = load i64, i64* %17, align 8
  %181 = call i64 @ZIL_ACE_LENGTH(i64 %180)
  %182 = add i64 %179, %181
  %183 = inttoptr i64 %182 to i8*
  store i8* %183, i8** %18, align 8
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %185 = icmp ne %struct.TYPE_17__* %184, null
  br i1 %185, label %186, label %193

186:                                              ; preds = %167
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %188 = load i8*, i8** %18, align 8
  %189 = call i8* @zfs_log_fuid_ids(%struct.TYPE_17__* %187, i8* %188)
  store i8* %189, i8** %18, align 8
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %191 = load i8*, i8** %18, align 8
  %192 = call i32 @zfs_log_fuid_domains(%struct.TYPE_17__* %190, i8* %191)
  br label %193

193:                                              ; preds = %186, %167
  br label %194

194:                                              ; preds = %193, %156
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  %199 = zext i1 %198 to i32
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 4
  %202 = load i32*, i32** %6, align 8
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %204 = load i32*, i32** %7, align 8
  %205 = call i32 @zil_itx_assign(i32* %202, %struct.TYPE_20__* %203, i32* %204)
  br label %206

206:                                              ; preds = %194, %31
  ret void
}

declare dso_local i64 @zil_replaying(i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @ZTOZSB(%struct.TYPE_16__*) #1

declare dso_local i64 @ZIL_ACE_LENGTH(i64) #1

declare dso_local %struct.TYPE_20__* @zil_itx_create(i32, i64) #1

declare dso_local i32 @bcopy(i32, i8*, i64) #1

declare dso_local i8* @zfs_log_fuid_ids(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @zfs_log_fuid_domains(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @zil_itx_assign(i32*, %struct.TYPE_20__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
