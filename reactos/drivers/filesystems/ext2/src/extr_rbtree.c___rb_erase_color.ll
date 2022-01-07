; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_rbtree.c___rb_erase_color.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_rbtree.c___rb_erase_color.c"
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
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %4, align 8
  store %struct.rb_node* %1, %struct.rb_node** %5, align 8
  store %struct.rb_root* %2, %struct.rb_root** %6, align 8
  br label %10

10:                                               ; preds = %227, %3
  %11 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %12 = icmp ne %struct.rb_node* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %15 = call i64 @rb_is_black(%struct.rb_node* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13, %10
  %18 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %19 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %20 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %19, i32 0, i32 0
  %21 = load %struct.rb_node*, %struct.rb_node** %20, align 8
  %22 = icmp ne %struct.rb_node* %18, %21
  br label %23

23:                                               ; preds = %17, %13
  %24 = phi i1 [ false, %13 ], [ %22, %17 ]
  br i1 %24, label %25, label %228

25:                                               ; preds = %23
  %26 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %27 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %26, i32 0, i32 0
  %28 = load %struct.rb_node*, %struct.rb_node** %27, align 8
  %29 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %30 = icmp eq %struct.rb_node* %28, %29
  br i1 %30, label %31, label %129

31:                                               ; preds = %25
  %32 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %33 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %32, i32 0, i32 1
  %34 = load %struct.rb_node*, %struct.rb_node** %33, align 8
  store %struct.rb_node* %34, %struct.rb_node** %7, align 8
  %35 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %36 = call i64 @rb_is_red(%struct.rb_node* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %40 = call i32 @rb_set_black(%struct.rb_node* %39)
  %41 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %42 = call i32 @rb_set_red(%struct.rb_node* %41)
  %43 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %44 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %45 = call i32 @__rb_rotate_left(%struct.rb_node* %43, %struct.rb_root* %44)
  %46 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %47 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %46, i32 0, i32 1
  %48 = load %struct.rb_node*, %struct.rb_node** %47, align 8
  store %struct.rb_node* %48, %struct.rb_node** %7, align 8
  br label %49

49:                                               ; preds = %38, %31
  %50 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %51 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %50, i32 0, i32 0
  %52 = load %struct.rb_node*, %struct.rb_node** %51, align 8
  %53 = icmp ne %struct.rb_node* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %56 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %55, i32 0, i32 0
  %57 = load %struct.rb_node*, %struct.rb_node** %56, align 8
  %58 = call i64 @rb_is_black(%struct.rb_node* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %54, %49
  %61 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %62 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %61, i32 0, i32 1
  %63 = load %struct.rb_node*, %struct.rb_node** %62, align 8
  %64 = icmp ne %struct.rb_node* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %67 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %66, i32 0, i32 1
  %68 = load %struct.rb_node*, %struct.rb_node** %67, align 8
  %69 = call i64 @rb_is_black(%struct.rb_node* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65, %60
  %72 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %73 = call i32 @rb_set_red(%struct.rb_node* %72)
  %74 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  store %struct.rb_node* %74, %struct.rb_node** %4, align 8
  %75 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %76 = call %struct.rb_node* @rb_parent(%struct.rb_node* %75)
  store %struct.rb_node* %76, %struct.rb_node** %5, align 8
  br label %128

77:                                               ; preds = %65, %54
  %78 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %79 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %78, i32 0, i32 1
  %80 = load %struct.rb_node*, %struct.rb_node** %79, align 8
  %81 = icmp ne %struct.rb_node* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %84 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %83, i32 0, i32 1
  %85 = load %struct.rb_node*, %struct.rb_node** %84, align 8
  %86 = call i64 @rb_is_black(%struct.rb_node* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %82, %77
  %89 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %90 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %89, i32 0, i32 0
  %91 = load %struct.rb_node*, %struct.rb_node** %90, align 8
  store %struct.rb_node* %91, %struct.rb_node** %8, align 8
  %92 = icmp ne %struct.rb_node* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %95 = call i32 @rb_set_black(%struct.rb_node* %94)
  br label %96

96:                                               ; preds = %93, %88
  %97 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %98 = call i32 @rb_set_red(%struct.rb_node* %97)
  %99 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %100 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %101 = call i32 @__rb_rotate_right(%struct.rb_node* %99, %struct.rb_root* %100)
  %102 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %103 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %102, i32 0, i32 1
  %104 = load %struct.rb_node*, %struct.rb_node** %103, align 8
  store %struct.rb_node* %104, %struct.rb_node** %7, align 8
  br label %105

105:                                              ; preds = %96, %82
  %106 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %107 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %108 = call i32 @rb_color(%struct.rb_node* %107)
  %109 = call i32 @rb_set_color(%struct.rb_node* %106, i32 %108)
  %110 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %111 = call i32 @rb_set_black(%struct.rb_node* %110)
  %112 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %113 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %112, i32 0, i32 1
  %114 = load %struct.rb_node*, %struct.rb_node** %113, align 8
  %115 = icmp ne %struct.rb_node* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %105
  %117 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %118 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %117, i32 0, i32 1
  %119 = load %struct.rb_node*, %struct.rb_node** %118, align 8
  %120 = call i32 @rb_set_black(%struct.rb_node* %119)
  br label %121

121:                                              ; preds = %116, %105
  %122 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %123 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %124 = call i32 @__rb_rotate_left(%struct.rb_node* %122, %struct.rb_root* %123)
  %125 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %126 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %125, i32 0, i32 0
  %127 = load %struct.rb_node*, %struct.rb_node** %126, align 8
  store %struct.rb_node* %127, %struct.rb_node** %4, align 8
  br label %228

128:                                              ; preds = %71
  br label %227

129:                                              ; preds = %25
  %130 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %131 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %130, i32 0, i32 0
  %132 = load %struct.rb_node*, %struct.rb_node** %131, align 8
  store %struct.rb_node* %132, %struct.rb_node** %7, align 8
  %133 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %134 = call i64 @rb_is_red(%struct.rb_node* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %129
  %137 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %138 = call i32 @rb_set_black(%struct.rb_node* %137)
  %139 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %140 = call i32 @rb_set_red(%struct.rb_node* %139)
  %141 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %142 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %143 = call i32 @__rb_rotate_right(%struct.rb_node* %141, %struct.rb_root* %142)
  %144 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %145 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %144, i32 0, i32 0
  %146 = load %struct.rb_node*, %struct.rb_node** %145, align 8
  store %struct.rb_node* %146, %struct.rb_node** %7, align 8
  br label %147

147:                                              ; preds = %136, %129
  %148 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %149 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %148, i32 0, i32 0
  %150 = load %struct.rb_node*, %struct.rb_node** %149, align 8
  %151 = icmp ne %struct.rb_node* %150, null
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %154 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %153, i32 0, i32 0
  %155 = load %struct.rb_node*, %struct.rb_node** %154, align 8
  %156 = call i64 @rb_is_black(%struct.rb_node* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %152, %147
  %159 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %160 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %159, i32 0, i32 1
  %161 = load %struct.rb_node*, %struct.rb_node** %160, align 8
  %162 = icmp ne %struct.rb_node* %161, null
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %165 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %164, i32 0, i32 1
  %166 = load %struct.rb_node*, %struct.rb_node** %165, align 8
  %167 = call i64 @rb_is_black(%struct.rb_node* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %163, %158
  %170 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %171 = call i32 @rb_set_red(%struct.rb_node* %170)
  %172 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  store %struct.rb_node* %172, %struct.rb_node** %4, align 8
  %173 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %174 = call %struct.rb_node* @rb_parent(%struct.rb_node* %173)
  store %struct.rb_node* %174, %struct.rb_node** %5, align 8
  br label %226

175:                                              ; preds = %163, %152
  %176 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %177 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %176, i32 0, i32 0
  %178 = load %struct.rb_node*, %struct.rb_node** %177, align 8
  %179 = icmp ne %struct.rb_node* %178, null
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %182 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %181, i32 0, i32 0
  %183 = load %struct.rb_node*, %struct.rb_node** %182, align 8
  %184 = call i64 @rb_is_black(%struct.rb_node* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %203

186:                                              ; preds = %180, %175
  %187 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %188 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %187, i32 0, i32 1
  %189 = load %struct.rb_node*, %struct.rb_node** %188, align 8
  store %struct.rb_node* %189, %struct.rb_node** %9, align 8
  %190 = icmp ne %struct.rb_node* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %193 = call i32 @rb_set_black(%struct.rb_node* %192)
  br label %194

194:                                              ; preds = %191, %186
  %195 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %196 = call i32 @rb_set_red(%struct.rb_node* %195)
  %197 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %198 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %199 = call i32 @__rb_rotate_left(%struct.rb_node* %197, %struct.rb_root* %198)
  %200 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %201 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %200, i32 0, i32 0
  %202 = load %struct.rb_node*, %struct.rb_node** %201, align 8
  store %struct.rb_node* %202, %struct.rb_node** %7, align 8
  br label %203

203:                                              ; preds = %194, %180
  %204 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %205 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %206 = call i32 @rb_color(%struct.rb_node* %205)
  %207 = call i32 @rb_set_color(%struct.rb_node* %204, i32 %206)
  %208 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %209 = call i32 @rb_set_black(%struct.rb_node* %208)
  %210 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %211 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %210, i32 0, i32 0
  %212 = load %struct.rb_node*, %struct.rb_node** %211, align 8
  %213 = icmp ne %struct.rb_node* %212, null
  br i1 %213, label %214, label %219

214:                                              ; preds = %203
  %215 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %216 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %215, i32 0, i32 0
  %217 = load %struct.rb_node*, %struct.rb_node** %216, align 8
  %218 = call i32 @rb_set_black(%struct.rb_node* %217)
  br label %219

219:                                              ; preds = %214, %203
  %220 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %221 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %222 = call i32 @__rb_rotate_right(%struct.rb_node* %220, %struct.rb_root* %221)
  %223 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %224 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %223, i32 0, i32 0
  %225 = load %struct.rb_node*, %struct.rb_node** %224, align 8
  store %struct.rb_node* %225, %struct.rb_node** %4, align 8
  br label %228

226:                                              ; preds = %169
  br label %227

227:                                              ; preds = %226, %128
  br label %10

228:                                              ; preds = %219, %121, %23
  %229 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %230 = icmp ne %struct.rb_node* %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %233 = call i32 @rb_set_black(%struct.rb_node* %232)
  br label %234

234:                                              ; preds = %231, %228
  ret void
}

declare dso_local i64 @rb_is_black(%struct.rb_node*) #1

declare dso_local i64 @rb_is_red(%struct.rb_node*) #1

declare dso_local i32 @rb_set_black(%struct.rb_node*) #1

declare dso_local i32 @rb_set_red(%struct.rb_node*) #1

declare dso_local i32 @__rb_rotate_left(%struct.rb_node*, %struct.rb_root*) #1

declare dso_local %struct.rb_node* @rb_parent(%struct.rb_node*) #1

declare dso_local i32 @__rb_rotate_right(%struct.rb_node*, %struct.rb_root*) #1

declare dso_local i32 @rb_set_color(%struct.rb_node*, i32) #1

declare dso_local i32 @rb_color(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
