; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_namespace.c_namespace_calculate_mounts.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_namespace.c_namespace_calculate_mounts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64 }

@PROTECT_SYSTEM_STRICT = common dso_local global i64 0, align 8
@protect_system_strict_table = common dso_local global i32 0, align 4
@PROTECT_SYSTEM_FULL = common dso_local global i64 0, align 8
@protect_system_full_table = common dso_local global i32 0, align 4
@PROTECT_SYSTEM_YES = common dso_local global i64 0, align 8
@protect_system_yes_table = common dso_local global i32 0, align 4
@PROTECT_HOME_YES = common dso_local global i64 0, align 8
@protect_home_yes_table = common dso_local global i32 0, align 4
@PROTECT_HOME_READ_ONLY = common dso_local global i64 0, align 8
@protect_home_read_only_table = common dso_local global i32 0, align 4
@PROTECT_HOME_TMPFS = common dso_local global i64 0, align 8
@protect_home_tmpfs_table = common dso_local global i32 0, align 4
@protect_kernel_tunables_table = common dso_local global i32 0, align 4
@protect_kernel_modules_table = common dso_local global i32 0, align 4
@protect_kernel_logs_table = common dso_local global i32 0, align 4
@apivfs_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i8**, i8**, i8**, i8**, i64, i64, i8*, i8*, i64, i64)* @namespace_calculate_mounts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @namespace_calculate_mounts(%struct.TYPE_4__* %0, i8** %1, i8** %2, i8** %3, i8** %4, i64 %5, i64 %6, i8* %7, i8* %8, i64 %9, i64 %10) #0 {
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %12, align 8
  store i8** %1, i8*** %13, align 8
  store i8** %2, i8*** %14, align 8
  store i8** %3, i8*** %15, align 8
  store i8** %4, i8*** %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i64 %9, i64* %21, align 8
  store i64 %10, i64* %22, align 8
  %25 = load i64, i64* %22, align 8
  %26 = load i64, i64* @PROTECT_SYSTEM_STRICT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %11
  %29 = load i32, i32* @protect_system_strict_table, align 4
  %30 = call i64 @ELEMENTSOF(i32 %29)
  br label %50

31:                                               ; preds = %11
  %32 = load i64, i64* %22, align 8
  %33 = load i64, i64* @PROTECT_SYSTEM_FULL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @protect_system_full_table, align 4
  %37 = call i64 @ELEMENTSOF(i32 %36)
  br label %48

38:                                               ; preds = %31
  %39 = load i64, i64* %22, align 8
  %40 = load i64, i64* @PROTECT_SYSTEM_YES, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @protect_system_yes_table, align 4
  %44 = call i64 @ELEMENTSOF(i32 %43)
  br label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i64 [ %44, %42 ], [ 0, %45 ]
  br label %48

48:                                               ; preds = %46, %35
  %49 = phi i64 [ %37, %35 ], [ %47, %46 ]
  br label %50

50:                                               ; preds = %48, %28
  %51 = phi i64 [ %30, %28 ], [ %49, %48 ]
  store i64 %51, i64* %24, align 8
  %52 = load i64, i64* %21, align 8
  %53 = load i64, i64* @PROTECT_HOME_YES, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @protect_home_yes_table, align 4
  %57 = call i64 @ELEMENTSOF(i32 %56)
  br label %77

58:                                               ; preds = %50
  %59 = load i64, i64* %21, align 8
  %60 = load i64, i64* @PROTECT_HOME_READ_ONLY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @protect_home_read_only_table, align 4
  %64 = call i64 @ELEMENTSOF(i32 %63)
  br label %75

65:                                               ; preds = %58
  %66 = load i64, i64* %21, align 8
  %67 = load i64, i64* @PROTECT_HOME_TMPFS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @protect_home_tmpfs_table, align 4
  %71 = call i64 @ELEMENTSOF(i32 %70)
  br label %73

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %69
  %74 = phi i64 [ %71, %69 ], [ 0, %72 ]
  br label %75

75:                                               ; preds = %73, %62
  %76 = phi i64 [ %64, %62 ], [ %74, %73 ]
  br label %77

77:                                               ; preds = %75, %55
  %78 = phi i64 [ %57, %55 ], [ %76, %75 ]
  store i64 %78, i64* %23, align 8
  %79 = load i8*, i8** %19, align 8
  %80 = icmp ne i8* %79, null
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load i8*, i8** %20, align 8
  %85 = icmp ne i8* %84, null
  %86 = xor i1 %85, true
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = add nsw i32 %83, %88
  %90 = sext i32 %89 to i64
  %91 = load i8**, i8*** %13, align 8
  %92 = call i64 @strv_length(i8** %91)
  %93 = add i64 %90, %92
  %94 = load i8**, i8*** %14, align 8
  %95 = call i64 @strv_length(i8** %94)
  %96 = add i64 %93, %95
  %97 = load i8**, i8*** %15, align 8
  %98 = call i64 @strv_length(i8** %97)
  %99 = add i64 %96, %98
  %100 = load i8**, i8*** %16, align 8
  %101 = call i64 @strv_length(i8** %100)
  %102 = add i64 %99, %101
  %103 = load i64, i64* %17, align 8
  %104 = add i64 %102, %103
  %105 = load i64, i64* %18, align 8
  %106 = add i64 %104, %105
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %106, %109
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %77
  %116 = load i32, i32* @protect_kernel_tunables_table, align 4
  %117 = call i64 @ELEMENTSOF(i32 %116)
  br label %119

118:                                              ; preds = %77
  br label %119

119:                                              ; preds = %118, %115
  %120 = phi i64 [ %117, %115 ], [ 0, %118 ]
  %121 = add i64 %110, %120
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load i32, i32* @protect_kernel_modules_table, align 4
  %128 = call i64 @ELEMENTSOF(i32 %127)
  br label %130

129:                                              ; preds = %119
  br label %130

130:                                              ; preds = %129, %126
  %131 = phi i64 [ %128, %126 ], [ 0, %129 ]
  %132 = add i64 %121, %131
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %130
  %138 = load i32, i32* @protect_kernel_logs_table, align 4
  %139 = call i64 @ELEMENTSOF(i32 %138)
  br label %141

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140, %137
  %142 = phi i64 [ %139, %137 ], [ 0, %140 ]
  %143 = add i64 %132, %142
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 1, i32 0
  %150 = sext i32 %149 to i64
  %151 = add i64 %143, %150
  %152 = load i64, i64* %23, align 8
  %153 = add i64 %151, %152
  %154 = load i64, i64* %24, align 8
  %155 = add i64 %153, %154
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 2, i32 0
  %162 = sext i32 %161 to i64
  %163 = add i64 %155, %162
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %165 = call i64 @namespace_info_mount_apivfs(%struct.TYPE_4__* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %141
  %168 = load i32, i32* @apivfs_table, align 4
  %169 = call i64 @ELEMENTSOF(i32 %168)
  br label %171

170:                                              ; preds = %141
  br label %171

171:                                              ; preds = %170, %167
  %172 = phi i64 [ %169, %167 ], [ 0, %170 ]
  %173 = add i64 %163, %172
  ret i64 %173
}

declare dso_local i64 @ELEMENTSOF(i32) #1

declare dso_local i64 @strv_length(i8**) #1

declare dso_local i64 @namespace_info_mount_apivfs(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
