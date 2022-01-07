; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_xattr_resize_item.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_xattr_resize_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_ref = type { i64, i64, i64, i8* }
%struct.ext4_xattr_item = type { i64, i8*, i32 }

@FALSE = common dso_local global i8* null, align 8
@ENOSPC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_xattr_ref*, %struct.ext4_xattr_item*, i64)* @ext4_xattr_resize_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_resize_item(%struct.ext4_xattr_ref* %0, %struct.ext4_xattr_item* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext4_xattr_ref*, align 8
  %6 = alloca %struct.ext4_xattr_item*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ext4_xattr_ref* %0, %struct.ext4_xattr_ref** %5, align 8
  store %struct.ext4_xattr_item* %1, %struct.ext4_xattr_item** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i8*, i8** @FALSE, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** @FALSE, align 8
  store i8* %14, i8** %10, align 8
  %15 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %6, align 8
  %16 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %6, align 8
  %19 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %5, align 8
  %24 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  br label %30

26:                                               ; preds = %3
  %27 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %5, align 8
  %28 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i64 [ %25, %22 ], [ %29, %26 ]
  store i64 %31, i64* %12, align 8
  %32 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %6, align 8
  %33 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %64

36:                                               ; preds = %30
  %37 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %5, align 8
  %38 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @EXT4_XATTR_SIZE(i64 %40)
  %42 = add i64 %39, %41
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @EXT4_XATTR_SIZE(i64 %43)
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %36
  %47 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %5, align 8
  %48 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @EXT4_XATTR_SIZE(i64 %50)
  %52 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %6, align 8
  %53 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @EXT4_XATTR_LEN(i32 %54)
  %56 = add i64 %51, %55
  %57 = icmp ult i64 %49, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load i32, i32* @ENOSPC, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %197

61:                                               ; preds = %46
  %62 = load i8*, i8** @TRUE, align 8
  store i8* %62, i8** %10, align 8
  br label %63

63:                                               ; preds = %61, %36
  br label %92

64:                                               ; preds = %30
  %65 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %5, align 8
  %66 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i64 @EXT4_XATTR_SIZE(i64 %68)
  %70 = add i64 %67, %69
  %71 = load i64, i64* %7, align 8
  %72 = call i64 @EXT4_XATTR_SIZE(i64 %71)
  %73 = icmp ult i64 %70, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %64
  %75 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %5, align 8
  %76 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i64 @EXT4_XATTR_SIZE(i64 %78)
  %80 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %6, align 8
  %81 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @EXT4_XATTR_LEN(i32 %82)
  %84 = add i64 %79, %83
  %85 = icmp ult i64 %77, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %74
  %87 = load i32, i32* @ENOSPC, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %197

89:                                               ; preds = %74
  %90 = load i8*, i8** @TRUE, align 8
  store i8* %90, i8** %9, align 8
  br label %91

91:                                               ; preds = %89, %64
  br label %92

92:                                               ; preds = %91, %63
  %93 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %6, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @ext4_xattr_item_resize_data(%struct.ext4_xattr_item* %93, i64 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %4, align 4
  br label %197

100:                                              ; preds = %92
  %101 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %5, align 8
  %102 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %11, align 8
  %105 = call i64 @EXT4_XATTR_SIZE(i64 %104)
  %106 = sub i64 %103, %105
  %107 = load i64, i64* %7, align 8
  %108 = call i64 @EXT4_XATTR_SIZE(i64 %107)
  %109 = add i64 %106, %108
  %110 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %5, align 8
  %111 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %140

114:                                              ; preds = %100
  %115 = load i64, i64* %11, align 8
  %116 = call i64 @EXT4_XATTR_SIZE(i64 %115)
  %117 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %6, align 8
  %118 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @EXT4_XATTR_LEN(i32 %119)
  %121 = add i64 %116, %120
  %122 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %5, align 8
  %123 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, %121
  store i64 %125, i64* %123, align 8
  %126 = load i64, i64* %7, align 8
  %127 = call i64 @EXT4_XATTR_SIZE(i64 %126)
  %128 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %6, align 8
  %129 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @EXT4_XATTR_LEN(i32 %130)
  %132 = add i64 %127, %131
  %133 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %5, align 8
  %134 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = sub i64 %135, %132
  store i64 %136, i64* %134, align 8
  %137 = load i8*, i8** @FALSE, align 8
  %138 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %6, align 8
  %139 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  br label %192

140:                                              ; preds = %100
  %141 = load i8*, i8** %9, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %169

143:                                              ; preds = %140
  %144 = load i64, i64* %11, align 8
  %145 = call i64 @EXT4_XATTR_SIZE(i64 %144)
  %146 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %6, align 8
  %147 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @EXT4_XATTR_LEN(i32 %148)
  %150 = add i64 %145, %149
  %151 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %5, align 8
  %152 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %153, %150
  store i64 %154, i64* %152, align 8
  %155 = load i64, i64* %7, align 8
  %156 = call i64 @EXT4_XATTR_SIZE(i64 %155)
  %157 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %6, align 8
  %158 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i64 @EXT4_XATTR_LEN(i32 %159)
  %161 = add i64 %156, %160
  %162 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %5, align 8
  %163 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = sub i64 %164, %161
  store i64 %165, i64* %163, align 8
  %166 = load i8*, i8** @TRUE, align 8
  %167 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %6, align 8
  %168 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  br label %191

169:                                              ; preds = %140
  %170 = load i64, i64* %11, align 8
  %171 = call i64 @EXT4_XATTR_SIZE(i64 %170)
  %172 = load i64, i64* %12, align 8
  %173 = add i64 %172, %171
  store i64 %173, i64* %12, align 8
  %174 = load i64, i64* %7, align 8
  %175 = call i64 @EXT4_XATTR_SIZE(i64 %174)
  %176 = load i64, i64* %12, align 8
  %177 = sub i64 %176, %175
  store i64 %177, i64* %12, align 8
  %178 = load %struct.ext4_xattr_item*, %struct.ext4_xattr_item** %6, align 8
  %179 = getelementptr inbounds %struct.ext4_xattr_item, %struct.ext4_xattr_item* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %186

182:                                              ; preds = %169
  %183 = load i64, i64* %12, align 8
  %184 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %5, align 8
  %185 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  br label %190

186:                                              ; preds = %169
  %187 = load i64, i64* %12, align 8
  %188 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %5, align 8
  %189 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %188, i32 0, i32 1
  store i64 %187, i64* %189, align 8
  br label %190

190:                                              ; preds = %186, %182
  br label %191

191:                                              ; preds = %190, %143
  br label %192

192:                                              ; preds = %191, %114
  %193 = load i8*, i8** @TRUE, align 8
  %194 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %5, align 8
  %195 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %194, i32 0, i32 3
  store i8* %193, i8** %195, align 8
  %196 = load i32, i32* %8, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %192, %98, %86, %58
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i64 @EXT4_XATTR_SIZE(i64) #1

declare dso_local i64 @EXT4_XATTR_LEN(i32) #1

declare dso_local i32 @ext4_xattr_item_resize_data(%struct.ext4_xattr_item*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
