; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_test_bit.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_test_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2fs_rb_private = type { %struct.bmap_rb_extent*, %struct.bmap_rb_extent*, %struct.bmap_rb_extent*, i32, %struct.TYPE_2__ }
%struct.bmap_rb_extent = type { i64, i64, i32 }
%struct.TYPE_2__ = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext2fs_rb_private*, i64)* @rb_test_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_test_bit(%struct.ext2fs_rb_private* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ext2fs_rb_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bmap_rb_extent*, align 8
  %7 = alloca %struct.bmap_rb_extent*, align 8
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca %struct.rb_node*, align 8
  %10 = alloca %struct.rb_node**, align 8
  %11 = alloca %struct.bmap_rb_extent*, align 8
  store %struct.ext2fs_rb_private* %0, %struct.ext2fs_rb_private** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.bmap_rb_extent* null, %struct.bmap_rb_extent** %7, align 8
  store %struct.rb_node* null, %struct.rb_node** %8, align 8
  %12 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %4, align 8
  %13 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.rb_node** %14, %struct.rb_node*** %10, align 8
  %15 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %4, align 8
  %16 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %15, i32 0, i32 1
  %17 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %16, align 8
  store %struct.bmap_rb_extent* %17, %struct.bmap_rb_extent** %6, align 8
  %18 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %6, align 8
  %19 = icmp ne %struct.bmap_rb_extent* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %107

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %6, align 8
  %24 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %6, align 8
  %30 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %6, align 8
  %33 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = icmp slt i64 %28, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %149

38:                                               ; preds = %27, %21
  %39 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %4, align 8
  %40 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %39, i32 0, i32 0
  %41 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %40, align 8
  store %struct.bmap_rb_extent* %41, %struct.bmap_rb_extent** %7, align 8
  %42 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %7, align 8
  %43 = icmp ne %struct.bmap_rb_extent* %42, null
  br i1 %43, label %57, label %44

44:                                               ; preds = %38
  %45 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %6, align 8
  %46 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %45, i32 0, i32 2
  %47 = call %struct.rb_node* @ext2fs_rb_next(i32* %46)
  store %struct.rb_node* %47, %struct.rb_node** %9, align 8
  %48 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %49 = icmp ne %struct.rb_node* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %52 = call %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node* %51)
  store %struct.bmap_rb_extent* %52, %struct.bmap_rb_extent** %7, align 8
  br label %53

53:                                               ; preds = %50, %44
  %54 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %7, align 8
  %55 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %4, align 8
  %56 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %55, i32 0, i32 0
  store %struct.bmap_rb_extent* %54, %struct.bmap_rb_extent** %56, align 8
  br label %57

57:                                               ; preds = %53, %38
  %58 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %7, align 8
  %59 = icmp ne %struct.bmap_rb_extent* %58, null
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %6, align 8
  %63 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %6, align 8
  %66 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = icmp sge i64 %61, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %60
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %7, align 8
  %73 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %149

77:                                               ; preds = %70, %60
  br label %78

78:                                               ; preds = %77, %57
  %79 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %4, align 8
  %80 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %79, i32 0, i32 1
  store %struct.bmap_rb_extent* null, %struct.bmap_rb_extent** %80, align 8
  %81 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %4, align 8
  %82 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %81, i32 0, i32 0
  store %struct.bmap_rb_extent* null, %struct.bmap_rb_extent** %82, align 8
  %83 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %4, align 8
  %84 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %83, i32 0, i32 2
  %85 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %84, align 8
  store %struct.bmap_rb_extent* %85, %struct.bmap_rb_extent** %6, align 8
  %86 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %6, align 8
  %87 = icmp ne %struct.bmap_rb_extent* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %78
  br label %107

89:                                               ; preds = %78
  %90 = load i64, i64* %5, align 8
  %91 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %6, align 8
  %92 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %90, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %89
  %96 = load i64, i64* %5, align 8
  %97 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %6, align 8
  %98 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %6, align 8
  %101 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %99, %102
  %104 = icmp slt i64 %96, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  store i32 1, i32* %3, align 4
  br label %149

106:                                              ; preds = %95, %89
  br label %107

107:                                              ; preds = %106, %88, %20
  br label %108

108:                                              ; preds = %147, %107
  %109 = load %struct.rb_node**, %struct.rb_node*** %10, align 8
  %110 = load %struct.rb_node*, %struct.rb_node** %109, align 8
  %111 = icmp ne %struct.rb_node* %110, null
  br i1 %111, label %112, label %148

112:                                              ; preds = %108
  %113 = load %struct.rb_node**, %struct.rb_node*** %10, align 8
  %114 = load %struct.rb_node*, %struct.rb_node** %113, align 8
  store %struct.rb_node* %114, %struct.rb_node** %8, align 8
  %115 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %116 = call %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node* %115)
  store %struct.bmap_rb_extent* %116, %struct.bmap_rb_extent** %11, align 8
  %117 = load i64, i64* %5, align 8
  %118 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %11, align 8
  %119 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %117, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %112
  %123 = load %struct.rb_node**, %struct.rb_node*** %10, align 8
  %124 = load %struct.rb_node*, %struct.rb_node** %123, align 8
  %125 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %124, i32 0, i32 1
  store %struct.rb_node** %125, %struct.rb_node*** %10, align 8
  br label %147

126:                                              ; preds = %112
  %127 = load i64, i64* %5, align 8
  %128 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %11, align 8
  %129 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %11, align 8
  %132 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %130, %133
  %135 = icmp sge i64 %127, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %126
  %137 = load %struct.rb_node**, %struct.rb_node*** %10, align 8
  %138 = load %struct.rb_node*, %struct.rb_node** %137, align 8
  %139 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %138, i32 0, i32 0
  store %struct.rb_node** %139, %struct.rb_node*** %10, align 8
  br label %146

140:                                              ; preds = %126
  %141 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %11, align 8
  %142 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %4, align 8
  %143 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %142, i32 0, i32 1
  store %struct.bmap_rb_extent* %141, %struct.bmap_rb_extent** %143, align 8
  %144 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %4, align 8
  %145 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %144, i32 0, i32 0
  store %struct.bmap_rb_extent* null, %struct.bmap_rb_extent** %145, align 8
  store i32 1, i32* %3, align 4
  br label %149

146:                                              ; preds = %136
  br label %147

147:                                              ; preds = %146, %122
  br label %108

148:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %140, %105, %76, %37
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.rb_node* @ext2fs_rb_next(i32*) #1

declare dso_local %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
