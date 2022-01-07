; ModuleID = '/home/carl/AnghaBench/zfs/lib/libshare/extr_libshare.c_process_share.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libshare/extr_libshare.c_process_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_20__*, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_18__*, i8*, i8*)* }
%struct.TYPE_18__ = type { i8*, %struct.TYPE_18__*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.stat = type { i32 }
%struct.TYPE_16__ = type { i8*, i8* }

@B_FALSE = common dso_local global i8* null, align 8
@SA_BAD_PATH = common dso_local global i32 0, align 4
@SA_NO_MEMORY = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@SA_INVALID_PROTOCOL = common dso_local global i32 0, align 4
@fstypes = common dso_local global %struct.TYPE_20__* null, align 8
@SA_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @process_share to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_share(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.stat, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  %26 = load i8*, i8** @B_FALSE, align 8
  store i8* %26, i8** %24, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %28 = icmp eq %struct.TYPE_18__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %9
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = call %struct.TYPE_18__* @find_share(%struct.TYPE_19__* %30, i8* %31)
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %12, align 8
  br label %33

33:                                               ; preds = %29, %9
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %35 = icmp eq %struct.TYPE_18__* %34, null
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = load i8*, i8** %13, align 8
  %38 = call i64 @lstat(i8* %37, %struct.stat* %20)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @S_ISDIR(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40, %36
  %46 = load i32, i32* @SA_BAD_PATH, align 4
  store i32 %46, i32* %10, align 4
  br label %170

47:                                               ; preds = %40
  %48 = load i8*, i8** %13, align 8
  %49 = call %struct.TYPE_18__* @alloc_share(i8* %48)
  store %struct.TYPE_18__* %49, %struct.TYPE_18__** %12, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %51 = icmp eq %struct.TYPE_18__* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @SA_NO_MEMORY, align 4
  store i32 %53, i32* %21, align 4
  br label %157

54:                                               ; preds = %47
  %55 = load i8*, i8** @B_TRUE, align 8
  store i8* %55, i8** %24, align 8
  br label %56

56:                                               ; preds = %54, %33
  %57 = load i8*, i8** %18, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i8*, i8** %18, align 8
  %61 = call i8* @strdup(i8* %60)
  store i8* %61, i8** %23, align 8
  %62 = load i8*, i8** %23, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @SA_NO_MEMORY, align 4
  store i32 %65, i32* %21, align 4
  br label %157

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %56
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load i8*, i8** %23, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @SA_INVALID_PROTOCOL, align 4
  store i32 %75, i32* %21, align 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** @fstypes, align 8
  store %struct.TYPE_20__* %76, %struct.TYPE_20__** %25, align 8
  br label %77

77:                                               ; preds = %132, %67
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %79 = icmp ne %struct.TYPE_20__* %78, null
  br i1 %79, label %80, label %136

80:                                               ; preds = %77
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = call i64 @strcmp(i32 %83, i8* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %132

87:                                               ; preds = %80
  %88 = load i8*, i8** %14, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i8*, i8** %14, align 8
  %92 = call i8* @strdup(i8* %91)
  store i8* %92, i8** %22, align 8
  %93 = load i8*, i8** %22, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @SA_NO_MEMORY, align 4
  store i32 %96, i32* %21, align 4
  br label %157

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97, %87
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %101 = call %struct.TYPE_16__* @FSINFO(%struct.TYPE_18__* %99, %struct.TYPE_20__* %100)
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i8*, i8** %22, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %108 = call %struct.TYPE_16__* @FSINFO(%struct.TYPE_18__* %106, %struct.TYPE_20__* %107)
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  store i8* %105, i8** %109, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i32 (%struct.TYPE_18__*, i8*, i8*)*, i32 (%struct.TYPE_18__*, i8*, i8*)** %113, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = call i32 %114(%struct.TYPE_18__* %115, i8* %116, i8* %117)
  store i32 %118, i32* %21, align 4
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* @SA_OK, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %98
  %123 = load i8*, i8** %19, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i8*, i8** @B_TRUE, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %129 = call %struct.TYPE_16__* @FSINFO(%struct.TYPE_18__* %127, %struct.TYPE_20__* %128)
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  store i8* %126, i8** %130, align 8
  br label %131

131:                                              ; preds = %125, %122, %98
  br label %136

132:                                              ; preds = %80
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %134, align 8
  store %struct.TYPE_20__* %135, %struct.TYPE_20__** %25, align 8
  br label %77

136:                                              ; preds = %131, %77
  %137 = load i32, i32* %21, align 4
  %138 = load i32, i32* @SA_OK, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  br label %157

141:                                              ; preds = %136
  %142 = load i8*, i8** %24, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %156

144:                                              ; preds = %141
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 2
  store %struct.TYPE_19__* %145, %struct.TYPE_19__** %147, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %149, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  store %struct.TYPE_18__* %150, %struct.TYPE_18__** %152, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  store %struct.TYPE_18__* %153, %struct.TYPE_18__** %155, align 8
  br label %156

156:                                              ; preds = %144, %141
  br label %157

157:                                              ; preds = %156, %140, %95, %64, %52
  %158 = load i32, i32* %21, align 4
  %159 = load i32, i32* @SA_OK, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %157
  %162 = load i8*, i8** %24, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %166 = call i32 @free_share(%struct.TYPE_18__* %165)
  br label %167

167:                                              ; preds = %164, %161
  br label %168

168:                                              ; preds = %167, %157
  %169 = load i32, i32* %21, align 4
  store i32 %169, i32* %10, align 4
  br label %170

170:                                              ; preds = %168, %45
  %171 = load i32, i32* %10, align 4
  ret i32 %171
}

declare dso_local %struct.TYPE_18__* @find_share(%struct.TYPE_19__*, i8*) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_18__* @alloc_share(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_16__* @FSINFO(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local i32 @free_share(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
