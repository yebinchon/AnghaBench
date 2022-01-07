; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_rbtree.c_rb_erase.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_rbtree.c_rb_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { %struct.rb_node*, %struct.rb_node*, i32 }
%struct.rb_root = type { %struct.rb_node* }

@RB_BLACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rb_erase(%struct.rb_node* %0, %struct.rb_root* %1) #0 {
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rb_root*, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.rb_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %3, align 8
  store %struct.rb_root* %1, %struct.rb_root** %4, align 8
  %10 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %11 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %10, i32 0, i32 1
  %12 = load %struct.rb_node*, %struct.rb_node** %11, align 8
  %13 = icmp ne %struct.rb_node* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %16 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %15, i32 0, i32 0
  %17 = load %struct.rb_node*, %struct.rb_node** %16, align 8
  store %struct.rb_node* %17, %struct.rb_node** %5, align 8
  br label %125

18:                                               ; preds = %2
  %19 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %20 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %19, i32 0, i32 0
  %21 = load %struct.rb_node*, %struct.rb_node** %20, align 8
  %22 = icmp ne %struct.rb_node* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %25 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %24, i32 0, i32 1
  %26 = load %struct.rb_node*, %struct.rb_node** %25, align 8
  store %struct.rb_node* %26, %struct.rb_node** %5, align 8
  br label %124

27:                                               ; preds = %18
  %28 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  store %struct.rb_node* %28, %struct.rb_node** %8, align 8
  %29 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %30 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %29, i32 0, i32 0
  %31 = load %struct.rb_node*, %struct.rb_node** %30, align 8
  store %struct.rb_node* %31, %struct.rb_node** %3, align 8
  br label %32

32:                                               ; preds = %37, %27
  %33 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %34 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %33, i32 0, i32 1
  %35 = load %struct.rb_node*, %struct.rb_node** %34, align 8
  store %struct.rb_node* %35, %struct.rb_node** %9, align 8
  %36 = icmp ne %struct.rb_node* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  store %struct.rb_node* %38, %struct.rb_node** %3, align 8
  br label %32

39:                                               ; preds = %32
  %40 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %41 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %40, i32 0, i32 0
  %42 = load %struct.rb_node*, %struct.rb_node** %41, align 8
  store %struct.rb_node* %42, %struct.rb_node** %5, align 8
  %43 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %44 = call %struct.rb_node* @rb_parent(%struct.rb_node* %43)
  store %struct.rb_node* %44, %struct.rb_node** %6, align 8
  %45 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %46 = call i64 @rb_color(%struct.rb_node* %45)
  store i64 %46, i64* %7, align 8
  %47 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %48 = icmp ne %struct.rb_node* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %51 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %52 = call i32 @rb_set_parent(%struct.rb_node* %50, %struct.rb_node* %51)
  br label %53

53:                                               ; preds = %49, %39
  %54 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %55 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %56 = icmp eq %struct.rb_node* %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %59 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %60 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %59, i32 0, i32 0
  store %struct.rb_node* %58, %struct.rb_node** %60, align 8
  %61 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  store %struct.rb_node* %61, %struct.rb_node** %6, align 8
  br label %66

62:                                               ; preds = %53
  %63 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %64 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %65 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %64, i32 0, i32 1
  store %struct.rb_node* %63, %struct.rb_node** %65, align 8
  br label %66

66:                                               ; preds = %62, %57
  %67 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %68 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %71 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %73 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %72, i32 0, i32 0
  %74 = load %struct.rb_node*, %struct.rb_node** %73, align 8
  %75 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %76 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %75, i32 0, i32 0
  store %struct.rb_node* %74, %struct.rb_node** %76, align 8
  %77 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %78 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %77, i32 0, i32 1
  %79 = load %struct.rb_node*, %struct.rb_node** %78, align 8
  %80 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %81 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %80, i32 0, i32 1
  store %struct.rb_node* %79, %struct.rb_node** %81, align 8
  %82 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %83 = call %struct.rb_node* @rb_parent(%struct.rb_node* %82)
  %84 = icmp ne %struct.rb_node* %83, null
  br i1 %84, label %85, label %103

85:                                               ; preds = %66
  %86 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %87 = call %struct.rb_node* @rb_parent(%struct.rb_node* %86)
  %88 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %87, i32 0, i32 1
  %89 = load %struct.rb_node*, %struct.rb_node** %88, align 8
  %90 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %91 = icmp eq %struct.rb_node* %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %94 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %95 = call %struct.rb_node* @rb_parent(%struct.rb_node* %94)
  %96 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %95, i32 0, i32 1
  store %struct.rb_node* %93, %struct.rb_node** %96, align 8
  br label %102

97:                                               ; preds = %85
  %98 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %99 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %100 = call %struct.rb_node* @rb_parent(%struct.rb_node* %99)
  %101 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %100, i32 0, i32 0
  store %struct.rb_node* %98, %struct.rb_node** %101, align 8
  br label %102

102:                                              ; preds = %97, %92
  br label %107

103:                                              ; preds = %66
  %104 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %105 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %106 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %105, i32 0, i32 0
  store %struct.rb_node* %104, %struct.rb_node** %106, align 8
  br label %107

107:                                              ; preds = %103, %102
  %108 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %109 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %108, i32 0, i32 1
  %110 = load %struct.rb_node*, %struct.rb_node** %109, align 8
  %111 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %112 = call i32 @rb_set_parent(%struct.rb_node* %110, %struct.rb_node* %111)
  %113 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %114 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %113, i32 0, i32 0
  %115 = load %struct.rb_node*, %struct.rb_node** %114, align 8
  %116 = icmp ne %struct.rb_node* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %107
  %118 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %119 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %118, i32 0, i32 0
  %120 = load %struct.rb_node*, %struct.rb_node** %119, align 8
  %121 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %122 = call i32 @rb_set_parent(%struct.rb_node* %120, %struct.rb_node* %121)
  br label %123

123:                                              ; preds = %117, %107
  br label %159

124:                                              ; preds = %23
  br label %125

125:                                              ; preds = %124, %14
  %126 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %127 = call %struct.rb_node* @rb_parent(%struct.rb_node* %126)
  store %struct.rb_node* %127, %struct.rb_node** %6, align 8
  %128 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %129 = call i64 @rb_color(%struct.rb_node* %128)
  store i64 %129, i64* %7, align 8
  %130 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %131 = icmp ne %struct.rb_node* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %125
  %133 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %134 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %135 = call i32 @rb_set_parent(%struct.rb_node* %133, %struct.rb_node* %134)
  br label %136

136:                                              ; preds = %132, %125
  %137 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %138 = icmp ne %struct.rb_node* %137, null
  br i1 %138, label %139, label %154

139:                                              ; preds = %136
  %140 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %141 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %140, i32 0, i32 1
  %142 = load %struct.rb_node*, %struct.rb_node** %141, align 8
  %143 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %144 = icmp eq %struct.rb_node* %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %147 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %148 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %147, i32 0, i32 1
  store %struct.rb_node* %146, %struct.rb_node** %148, align 8
  br label %153

149:                                              ; preds = %139
  %150 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %151 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %152 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %151, i32 0, i32 0
  store %struct.rb_node* %150, %struct.rb_node** %152, align 8
  br label %153

153:                                              ; preds = %149, %145
  br label %158

154:                                              ; preds = %136
  %155 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %156 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %157 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %156, i32 0, i32 0
  store %struct.rb_node* %155, %struct.rb_node** %157, align 8
  br label %158

158:                                              ; preds = %154, %153
  br label %159

159:                                              ; preds = %158, %123
  %160 = load i64, i64* %7, align 8
  %161 = load i64, i64* @RB_BLACK, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %165 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %166 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %167 = call i32 @__rb_erase_color(%struct.rb_node* %164, %struct.rb_node* %165, %struct.rb_root* %166)
  br label %168

168:                                              ; preds = %163, %159
  ret void
}

declare dso_local %struct.rb_node* @rb_parent(%struct.rb_node*) #1

declare dso_local i64 @rb_color(%struct.rb_node*) #1

declare dso_local i32 @rb_set_parent(%struct.rb_node*, %struct.rb_node*) #1

declare dso_local i32 @__rb_erase_color(%struct.rb_node*, %struct.rb_node*, %struct.rb_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
