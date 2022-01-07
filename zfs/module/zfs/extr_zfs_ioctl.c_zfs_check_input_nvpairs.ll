; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_check_input_nvpairs.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_check_input_nvpairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8*, i64 }

@B_FALSE = common dso_local global i32 0, align 4
@ZK_WILDCARDLIST = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@DATA_TYPE_ANY = common dso_local global i64 0, align 8
@ZFS_ERR_IOC_ARG_BADTYPE = common dso_local global i32 0, align 4
@ZK_OPTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"optional\00", align 1
@DATA_TYPE_NVLIST = common dso_local global i64 0, align 8
@ZFS_ERR_IOC_ARG_UNAVAIL = common dso_local global i32 0, align 4
@ZFS_ERR_IOC_ARG_REQUIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*)* @zfs_check_input_nvpairs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_check_input_nvpairs(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %6, align 8
  %17 = load i32, i32* @B_FALSE, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @nvlist_next_nvpair(i32* %18, i32* null)
  store i32* %19, i32** %8, align 8
  br label %20

20:                                               ; preds = %109, %2
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %113

23:                                               ; preds = %20
  %24 = load i32*, i32** %8, align 8
  %25 = call i8* @nvpair_name(i32* %24)
  store i8* %25, i8** %9, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i64 @nvpair_type(i32* %26)
  store i64 %27, i64* %10, align 8
  %28 = load i32, i32* @B_FALSE, align 4
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %91, %23
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %94

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ZK_WILDCARDLIST, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %35
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i64 @strcmp(i8* %51, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %91

56:                                               ; preds = %45, %35
  %57 = load i32, i32* @B_TRUE, align 4
  store i32 %57, i32* %11, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DATA_TYPE_ANY, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %56
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* @ZFS_ERR_IOC_ARG_BADTYPE, align 4
  %77 = call i32 @SET_ERROR(i32 %76)
  store i32 %77, i32* %3, align 4
  br label %166

78:                                               ; preds = %66, %56
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ZK_OPTIONAL, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %91

89:                                               ; preds = %78
  %90 = load i32, i32* @B_TRUE, align 4
  store i32 %90, i32* %7, align 4
  br label %94

91:                                               ; preds = %88, %55
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %29

94:                                               ; preds = %89, %29
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %94
  %98 = load i8*, i8** %9, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* @DATA_TYPE_NVLIST, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101, %97
  %106 = load i32, i32* @ZFS_ERR_IOC_ARG_UNAVAIL, align 4
  %107 = call i32 @SET_ERROR(i32 %106)
  store i32 %107, i32* %3, align 4
  br label %166

108:                                              ; preds = %101, %94
  br label %109

109:                                              ; preds = %108
  %110 = load i32*, i32** %4, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = call i32* @nvlist_next_nvpair(i32* %110, i32* %111)
  store i32* %112, i32** %8, align 8
  br label %20

113:                                              ; preds = %20
  store i32 0, i32* %13, align 4
  br label %114

114:                                              ; preds = %162, %113
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %165

120:                                              ; preds = %114
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @ZK_OPTIONAL, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %162

131:                                              ; preds = %120
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @ZK_WILDCARDLIST, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %131
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* @ZFS_ERR_IOC_ARG_REQUIRED, align 4
  %146 = call i32 @SET_ERROR(i32 %145)
  store i32 %146, i32* %3, align 4
  br label %166

147:                                              ; preds = %141
  br label %162

148:                                              ; preds = %131
  %149 = load i32*, i32** %4, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @nvlist_exists(i32* %149, i8* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %148
  %159 = load i32, i32* @ZFS_ERR_IOC_ARG_REQUIRED, align 4
  %160 = call i32 @SET_ERROR(i32 %159)
  store i32 %160, i32* %3, align 4
  br label %166

161:                                              ; preds = %148
  br label %162

162:                                              ; preds = %161, %147, %130
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %13, align 4
  br label %114

165:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  br label %166

166:                                              ; preds = %165, %158, %144, %105, %75
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i64 @nvpair_type(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @nvlist_exists(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
