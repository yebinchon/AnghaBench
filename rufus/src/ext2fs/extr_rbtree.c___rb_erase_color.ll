; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_rbtree.c___rb_erase_color.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_rbtree.c___rb_erase_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rb_node*, %struct.rb_node*, %struct.rb_root*)* @__rb_erase_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rb_erase_color(%struct.rb_node* %0, %struct.rb_node* %1, %struct.rb_root* %2) #0 {
  %4 = alloca %struct.rb_node*, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.rb_root*, align 8
  %7 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %4, align 8
  store %struct.rb_node* %1, %struct.rb_node** %5, align 8
  store %struct.rb_root* %2, %struct.rb_root** %6, align 8
  br label %8

8:                                                ; preds = %205, %3
  %9 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %10 = icmp ne %struct.rb_node* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %13 = call i64 @ext2fs_rb_is_black(%struct.rb_node* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11, %8
  %16 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %17 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %18 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %17, i32 0, i32 0
  %19 = load %struct.rb_node*, %struct.rb_node** %18, align 8
  %20 = icmp ne %struct.rb_node* %16, %19
  br label %21

21:                                               ; preds = %15, %11
  %22 = phi i1 [ false, %11 ], [ %20, %15 ]
  br i1 %22, label %23, label %206

23:                                               ; preds = %21
  %24 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %25 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %24, i32 0, i32 0
  %26 = load %struct.rb_node*, %struct.rb_node** %25, align 8
  %27 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %28 = icmp eq %struct.rb_node* %26, %27
  br i1 %28, label %29, label %117

29:                                               ; preds = %23
  %30 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %31 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %30, i32 0, i32 1
  %32 = load %struct.rb_node*, %struct.rb_node** %31, align 8
  store %struct.rb_node* %32, %struct.rb_node** %7, align 8
  %33 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %34 = call i64 @ext2fs_rb_is_red(%struct.rb_node* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %38 = call i32 @ext2fs_rb_set_black(%struct.rb_node* %37)
  %39 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %40 = call i32 @ext2fs_rb_set_red(%struct.rb_node* %39)
  %41 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %42 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %43 = call i32 @__rb_rotate_left(%struct.rb_node* %41, %struct.rb_root* %42)
  %44 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %45 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %44, i32 0, i32 1
  %46 = load %struct.rb_node*, %struct.rb_node** %45, align 8
  store %struct.rb_node* %46, %struct.rb_node** %7, align 8
  br label %47

47:                                               ; preds = %36, %29
  %48 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %49 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %48, i32 0, i32 0
  %50 = load %struct.rb_node*, %struct.rb_node** %49, align 8
  %51 = icmp ne %struct.rb_node* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %54 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %53, i32 0, i32 0
  %55 = load %struct.rb_node*, %struct.rb_node** %54, align 8
  %56 = call i64 @ext2fs_rb_is_black(%struct.rb_node* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %52, %47
  %59 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %60 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %59, i32 0, i32 1
  %61 = load %struct.rb_node*, %struct.rb_node** %60, align 8
  %62 = icmp ne %struct.rb_node* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %65 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %64, i32 0, i32 1
  %66 = load %struct.rb_node*, %struct.rb_node** %65, align 8
  %67 = call i64 @ext2fs_rb_is_black(%struct.rb_node* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63, %58
  %70 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %71 = call i32 @ext2fs_rb_set_red(%struct.rb_node* %70)
  %72 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  store %struct.rb_node* %72, %struct.rb_node** %4, align 8
  %73 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %74 = call %struct.rb_node* @ext2fs_rb_parent(%struct.rb_node* %73)
  store %struct.rb_node* %74, %struct.rb_node** %5, align 8
  br label %116

75:                                               ; preds = %63, %52
  %76 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %77 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %76, i32 0, i32 1
  %78 = load %struct.rb_node*, %struct.rb_node** %77, align 8
  %79 = icmp ne %struct.rb_node* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %82 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %81, i32 0, i32 1
  %83 = load %struct.rb_node*, %struct.rb_node** %82, align 8
  %84 = call i64 @ext2fs_rb_is_black(%struct.rb_node* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %80, %75
  %87 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %88 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %87, i32 0, i32 0
  %89 = load %struct.rb_node*, %struct.rb_node** %88, align 8
  %90 = call i32 @ext2fs_rb_set_black(%struct.rb_node* %89)
  %91 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %92 = call i32 @ext2fs_rb_set_red(%struct.rb_node* %91)
  %93 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %94 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %95 = call i32 @__rb_rotate_right(%struct.rb_node* %93, %struct.rb_root* %94)
  %96 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %97 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %96, i32 0, i32 1
  %98 = load %struct.rb_node*, %struct.rb_node** %97, align 8
  store %struct.rb_node* %98, %struct.rb_node** %7, align 8
  br label %99

99:                                               ; preds = %86, %80
  %100 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %101 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %102 = call i32 @ext2fs_rb_color(%struct.rb_node* %101)
  %103 = call i32 @ext2fs_rb_set_color(%struct.rb_node* %100, i32 %102)
  %104 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %105 = call i32 @ext2fs_rb_set_black(%struct.rb_node* %104)
  %106 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %107 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %106, i32 0, i32 1
  %108 = load %struct.rb_node*, %struct.rb_node** %107, align 8
  %109 = call i32 @ext2fs_rb_set_black(%struct.rb_node* %108)
  %110 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %111 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %112 = call i32 @__rb_rotate_left(%struct.rb_node* %110, %struct.rb_root* %111)
  %113 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %114 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %113, i32 0, i32 0
  %115 = load %struct.rb_node*, %struct.rb_node** %114, align 8
  store %struct.rb_node* %115, %struct.rb_node** %4, align 8
  br label %206

116:                                              ; preds = %69
  br label %205

117:                                              ; preds = %23
  %118 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %119 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %118, i32 0, i32 0
  %120 = load %struct.rb_node*, %struct.rb_node** %119, align 8
  store %struct.rb_node* %120, %struct.rb_node** %7, align 8
  %121 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %122 = call i64 @ext2fs_rb_is_red(%struct.rb_node* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %117
  %125 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %126 = call i32 @ext2fs_rb_set_black(%struct.rb_node* %125)
  %127 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %128 = call i32 @ext2fs_rb_set_red(%struct.rb_node* %127)
  %129 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %130 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %131 = call i32 @__rb_rotate_right(%struct.rb_node* %129, %struct.rb_root* %130)
  %132 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %133 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %132, i32 0, i32 0
  %134 = load %struct.rb_node*, %struct.rb_node** %133, align 8
  store %struct.rb_node* %134, %struct.rb_node** %7, align 8
  br label %135

135:                                              ; preds = %124, %117
  %136 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %137 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %136, i32 0, i32 0
  %138 = load %struct.rb_node*, %struct.rb_node** %137, align 8
  %139 = icmp ne %struct.rb_node* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %142 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %141, i32 0, i32 0
  %143 = load %struct.rb_node*, %struct.rb_node** %142, align 8
  %144 = call i64 @ext2fs_rb_is_black(%struct.rb_node* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %140, %135
  %147 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %148 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %147, i32 0, i32 1
  %149 = load %struct.rb_node*, %struct.rb_node** %148, align 8
  %150 = icmp ne %struct.rb_node* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %153 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %152, i32 0, i32 1
  %154 = load %struct.rb_node*, %struct.rb_node** %153, align 8
  %155 = call i64 @ext2fs_rb_is_black(%struct.rb_node* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %151, %146
  %158 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %159 = call i32 @ext2fs_rb_set_red(%struct.rb_node* %158)
  %160 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  store %struct.rb_node* %160, %struct.rb_node** %4, align 8
  %161 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %162 = call %struct.rb_node* @ext2fs_rb_parent(%struct.rb_node* %161)
  store %struct.rb_node* %162, %struct.rb_node** %5, align 8
  br label %204

163:                                              ; preds = %151, %140
  %164 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %165 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %164, i32 0, i32 0
  %166 = load %struct.rb_node*, %struct.rb_node** %165, align 8
  %167 = icmp ne %struct.rb_node* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %170 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %169, i32 0, i32 0
  %171 = load %struct.rb_node*, %struct.rb_node** %170, align 8
  %172 = call i64 @ext2fs_rb_is_black(%struct.rb_node* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %168, %163
  %175 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %176 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %175, i32 0, i32 1
  %177 = load %struct.rb_node*, %struct.rb_node** %176, align 8
  %178 = call i32 @ext2fs_rb_set_black(%struct.rb_node* %177)
  %179 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %180 = call i32 @ext2fs_rb_set_red(%struct.rb_node* %179)
  %181 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %182 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %183 = call i32 @__rb_rotate_left(%struct.rb_node* %181, %struct.rb_root* %182)
  %184 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %185 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %184, i32 0, i32 0
  %186 = load %struct.rb_node*, %struct.rb_node** %185, align 8
  store %struct.rb_node* %186, %struct.rb_node** %7, align 8
  br label %187

187:                                              ; preds = %174, %168
  %188 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %189 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %190 = call i32 @ext2fs_rb_color(%struct.rb_node* %189)
  %191 = call i32 @ext2fs_rb_set_color(%struct.rb_node* %188, i32 %190)
  %192 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %193 = call i32 @ext2fs_rb_set_black(%struct.rb_node* %192)
  %194 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %195 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %194, i32 0, i32 0
  %196 = load %struct.rb_node*, %struct.rb_node** %195, align 8
  %197 = call i32 @ext2fs_rb_set_black(%struct.rb_node* %196)
  %198 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %199 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %200 = call i32 @__rb_rotate_right(%struct.rb_node* %198, %struct.rb_root* %199)
  %201 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %202 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %201, i32 0, i32 0
  %203 = load %struct.rb_node*, %struct.rb_node** %202, align 8
  store %struct.rb_node* %203, %struct.rb_node** %4, align 8
  br label %206

204:                                              ; preds = %157
  br label %205

205:                                              ; preds = %204, %116
  br label %8

206:                                              ; preds = %187, %99, %21
  %207 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %208 = icmp ne %struct.rb_node* %207, null
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %211 = call i32 @ext2fs_rb_set_black(%struct.rb_node* %210)
  br label %212

212:                                              ; preds = %209, %206
  ret void
}

declare dso_local i64 @ext2fs_rb_is_black(%struct.rb_node*) #1

declare dso_local i64 @ext2fs_rb_is_red(%struct.rb_node*) #1

declare dso_local i32 @ext2fs_rb_set_black(%struct.rb_node*) #1

declare dso_local i32 @ext2fs_rb_set_red(%struct.rb_node*) #1

declare dso_local i32 @__rb_rotate_left(%struct.rb_node*, %struct.rb_root*) #1

declare dso_local %struct.rb_node* @ext2fs_rb_parent(%struct.rb_node*) #1

declare dso_local i32 @__rb_rotate_right(%struct.rb_node*, %struct.rb_root*) #1

declare dso_local i32 @ext2fs_rb_set_color(%struct.rb_node*, i32) #1

declare dso_local i32 @ext2fs_rb_color(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
