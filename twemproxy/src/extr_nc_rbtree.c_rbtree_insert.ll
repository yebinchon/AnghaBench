; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_rbtree.c_rbtree_insert.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_rbtree.c_rbtree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbtree = type { %struct.rbnode*, %struct.rbnode* }
%struct.rbnode = type { i64, %struct.rbnode*, %struct.rbnode*, %struct.rbnode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rbtree_insert(%struct.rbtree* %0, %struct.rbnode* %1) #0 {
  %3 = alloca %struct.rbtree*, align 8
  %4 = alloca %struct.rbnode*, align 8
  %5 = alloca %struct.rbnode**, align 8
  %6 = alloca %struct.rbnode*, align 8
  %7 = alloca %struct.rbnode*, align 8
  %8 = alloca %struct.rbnode**, align 8
  store %struct.rbtree* %0, %struct.rbtree** %3, align 8
  store %struct.rbnode* %1, %struct.rbnode** %4, align 8
  %9 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %10 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %9, i32 0, i32 1
  store %struct.rbnode** %10, %struct.rbnode*** %5, align 8
  %11 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %12 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %11, i32 0, i32 0
  %13 = load %struct.rbnode*, %struct.rbnode** %12, align 8
  store %struct.rbnode* %13, %struct.rbnode** %6, align 8
  %14 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  %15 = load %struct.rbnode*, %struct.rbnode** %14, align 8
  %16 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %17 = icmp eq %struct.rbnode* %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %20 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %19, i32 0, i32 1
  store %struct.rbnode* null, %struct.rbnode** %20, align 8
  %21 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %22 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %23 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %22, i32 0, i32 2
  store %struct.rbnode* %21, %struct.rbnode** %23, align 8
  %24 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %25 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %26 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %25, i32 0, i32 3
  store %struct.rbnode* %24, %struct.rbnode** %26, align 8
  %27 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %28 = call i32 @rbtree_black(%struct.rbnode* %27)
  %29 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %30 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  store %struct.rbnode* %29, %struct.rbnode** %30, align 8
  br label %232

31:                                               ; preds = %2
  %32 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  %33 = load %struct.rbnode*, %struct.rbnode** %32, align 8
  store %struct.rbnode* %33, %struct.rbnode** %7, align 8
  br label %34

34:                                               ; preds = %55, %31
  %35 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %36 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %39 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %44 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %43, i32 0, i32 2
  br label %48

45:                                               ; preds = %34
  %46 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %47 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %46, i32 0, i32 3
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi %struct.rbnode** [ %44, %42 ], [ %47, %45 ]
  store %struct.rbnode** %49, %struct.rbnode*** %8, align 8
  %50 = load %struct.rbnode**, %struct.rbnode*** %8, align 8
  %51 = load %struct.rbnode*, %struct.rbnode** %50, align 8
  %52 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %53 = icmp eq %struct.rbnode* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %58

55:                                               ; preds = %48
  %56 = load %struct.rbnode**, %struct.rbnode*** %8, align 8
  %57 = load %struct.rbnode*, %struct.rbnode** %56, align 8
  store %struct.rbnode* %57, %struct.rbnode** %7, align 8
  br label %34

58:                                               ; preds = %54
  %59 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %60 = load %struct.rbnode**, %struct.rbnode*** %8, align 8
  store %struct.rbnode* %59, %struct.rbnode** %60, align 8
  %61 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %62 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %63 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %62, i32 0, i32 1
  store %struct.rbnode* %61, %struct.rbnode** %63, align 8
  %64 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %65 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %66 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %65, i32 0, i32 2
  store %struct.rbnode* %64, %struct.rbnode** %66, align 8
  %67 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %68 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %69 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %68, i32 0, i32 3
  store %struct.rbnode* %67, %struct.rbnode** %69, align 8
  %70 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %71 = call i32 @rbtree_red(%struct.rbnode* %70)
  br label %72

72:                                               ; preds = %227, %58
  %73 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %74 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  %75 = load %struct.rbnode*, %struct.rbnode** %74, align 8
  %76 = icmp ne %struct.rbnode* %73, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %79 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %78, i32 0, i32 1
  %80 = load %struct.rbnode*, %struct.rbnode** %79, align 8
  %81 = call i64 @rbtree_is_red(%struct.rbnode* %80)
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %77, %72
  %84 = phi i1 [ false, %72 ], [ %82, %77 ]
  br i1 %84, label %85, label %228

85:                                               ; preds = %83
  %86 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %87 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %86, i32 0, i32 1
  %88 = load %struct.rbnode*, %struct.rbnode** %87, align 8
  %89 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %90 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %89, i32 0, i32 1
  %91 = load %struct.rbnode*, %struct.rbnode** %90, align 8
  %92 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %91, i32 0, i32 1
  %93 = load %struct.rbnode*, %struct.rbnode** %92, align 8
  %94 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %93, i32 0, i32 2
  %95 = load %struct.rbnode*, %struct.rbnode** %94, align 8
  %96 = icmp eq %struct.rbnode* %88, %95
  br i1 %96, label %97, label %162

97:                                               ; preds = %85
  %98 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %99 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %98, i32 0, i32 1
  %100 = load %struct.rbnode*, %struct.rbnode** %99, align 8
  %101 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %100, i32 0, i32 1
  %102 = load %struct.rbnode*, %struct.rbnode** %101, align 8
  %103 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %102, i32 0, i32 3
  %104 = load %struct.rbnode*, %struct.rbnode** %103, align 8
  store %struct.rbnode* %104, %struct.rbnode** %7, align 8
  %105 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %106 = call i64 @rbtree_is_red(%struct.rbnode* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %97
  %109 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %110 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %109, i32 0, i32 1
  %111 = load %struct.rbnode*, %struct.rbnode** %110, align 8
  %112 = call i32 @rbtree_black(%struct.rbnode* %111)
  %113 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %114 = call i32 @rbtree_black(%struct.rbnode* %113)
  %115 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %116 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %115, i32 0, i32 1
  %117 = load %struct.rbnode*, %struct.rbnode** %116, align 8
  %118 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %117, i32 0, i32 1
  %119 = load %struct.rbnode*, %struct.rbnode** %118, align 8
  %120 = call i32 @rbtree_red(%struct.rbnode* %119)
  %121 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %122 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %121, i32 0, i32 1
  %123 = load %struct.rbnode*, %struct.rbnode** %122, align 8
  %124 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %123, i32 0, i32 1
  %125 = load %struct.rbnode*, %struct.rbnode** %124, align 8
  store %struct.rbnode* %125, %struct.rbnode** %4, align 8
  br label %161

126:                                              ; preds = %97
  %127 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %128 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %129 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %128, i32 0, i32 1
  %130 = load %struct.rbnode*, %struct.rbnode** %129, align 8
  %131 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %130, i32 0, i32 3
  %132 = load %struct.rbnode*, %struct.rbnode** %131, align 8
  %133 = icmp eq %struct.rbnode* %127, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %126
  %135 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %136 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %135, i32 0, i32 1
  %137 = load %struct.rbnode*, %struct.rbnode** %136, align 8
  store %struct.rbnode* %137, %struct.rbnode** %4, align 8
  %138 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  %139 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %140 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %141 = call i32 @rbtree_left_rotate(%struct.rbnode** %138, %struct.rbnode* %139, %struct.rbnode* %140)
  br label %142

142:                                              ; preds = %134, %126
  %143 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %144 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %143, i32 0, i32 1
  %145 = load %struct.rbnode*, %struct.rbnode** %144, align 8
  %146 = call i32 @rbtree_black(%struct.rbnode* %145)
  %147 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %148 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %147, i32 0, i32 1
  %149 = load %struct.rbnode*, %struct.rbnode** %148, align 8
  %150 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %149, i32 0, i32 1
  %151 = load %struct.rbnode*, %struct.rbnode** %150, align 8
  %152 = call i32 @rbtree_red(%struct.rbnode* %151)
  %153 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  %154 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %155 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %156 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %155, i32 0, i32 1
  %157 = load %struct.rbnode*, %struct.rbnode** %156, align 8
  %158 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %157, i32 0, i32 1
  %159 = load %struct.rbnode*, %struct.rbnode** %158, align 8
  %160 = call i32 @rbtree_right_rotate(%struct.rbnode** %153, %struct.rbnode* %154, %struct.rbnode* %159)
  br label %161

161:                                              ; preds = %142, %108
  br label %227

162:                                              ; preds = %85
  %163 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %164 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %163, i32 0, i32 1
  %165 = load %struct.rbnode*, %struct.rbnode** %164, align 8
  %166 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %165, i32 0, i32 1
  %167 = load %struct.rbnode*, %struct.rbnode** %166, align 8
  %168 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %167, i32 0, i32 2
  %169 = load %struct.rbnode*, %struct.rbnode** %168, align 8
  store %struct.rbnode* %169, %struct.rbnode** %7, align 8
  %170 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %171 = call i64 @rbtree_is_red(%struct.rbnode* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %191

173:                                              ; preds = %162
  %174 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %175 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %174, i32 0, i32 1
  %176 = load %struct.rbnode*, %struct.rbnode** %175, align 8
  %177 = call i32 @rbtree_black(%struct.rbnode* %176)
  %178 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %179 = call i32 @rbtree_black(%struct.rbnode* %178)
  %180 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %181 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %180, i32 0, i32 1
  %182 = load %struct.rbnode*, %struct.rbnode** %181, align 8
  %183 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %182, i32 0, i32 1
  %184 = load %struct.rbnode*, %struct.rbnode** %183, align 8
  %185 = call i32 @rbtree_red(%struct.rbnode* %184)
  %186 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %187 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %186, i32 0, i32 1
  %188 = load %struct.rbnode*, %struct.rbnode** %187, align 8
  %189 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %188, i32 0, i32 1
  %190 = load %struct.rbnode*, %struct.rbnode** %189, align 8
  store %struct.rbnode* %190, %struct.rbnode** %4, align 8
  br label %226

191:                                              ; preds = %162
  %192 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %193 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %194 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %193, i32 0, i32 1
  %195 = load %struct.rbnode*, %struct.rbnode** %194, align 8
  %196 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %195, i32 0, i32 2
  %197 = load %struct.rbnode*, %struct.rbnode** %196, align 8
  %198 = icmp eq %struct.rbnode* %192, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %191
  %200 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %201 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %200, i32 0, i32 1
  %202 = load %struct.rbnode*, %struct.rbnode** %201, align 8
  store %struct.rbnode* %202, %struct.rbnode** %4, align 8
  %203 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  %204 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %205 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %206 = call i32 @rbtree_right_rotate(%struct.rbnode** %203, %struct.rbnode* %204, %struct.rbnode* %205)
  br label %207

207:                                              ; preds = %199, %191
  %208 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %209 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %208, i32 0, i32 1
  %210 = load %struct.rbnode*, %struct.rbnode** %209, align 8
  %211 = call i32 @rbtree_black(%struct.rbnode* %210)
  %212 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %213 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %212, i32 0, i32 1
  %214 = load %struct.rbnode*, %struct.rbnode** %213, align 8
  %215 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %214, i32 0, i32 1
  %216 = load %struct.rbnode*, %struct.rbnode** %215, align 8
  %217 = call i32 @rbtree_red(%struct.rbnode* %216)
  %218 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  %219 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %220 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %221 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %220, i32 0, i32 1
  %222 = load %struct.rbnode*, %struct.rbnode** %221, align 8
  %223 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %222, i32 0, i32 1
  %224 = load %struct.rbnode*, %struct.rbnode** %223, align 8
  %225 = call i32 @rbtree_left_rotate(%struct.rbnode** %218, %struct.rbnode* %219, %struct.rbnode* %224)
  br label %226

226:                                              ; preds = %207, %173
  br label %227

227:                                              ; preds = %226, %161
  br label %72

228:                                              ; preds = %83
  %229 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  %230 = load %struct.rbnode*, %struct.rbnode** %229, align 8
  %231 = call i32 @rbtree_black(%struct.rbnode* %230)
  br label %232

232:                                              ; preds = %228, %18
  ret void
}

declare dso_local i32 @rbtree_black(%struct.rbnode*) #1

declare dso_local i32 @rbtree_red(%struct.rbnode*) #1

declare dso_local i64 @rbtree_is_red(%struct.rbnode*) #1

declare dso_local i32 @rbtree_left_rotate(%struct.rbnode**, %struct.rbnode*, %struct.rbnode*) #1

declare dso_local i32 @rbtree_right_rotate(%struct.rbnode**, %struct.rbnode*, %struct.rbnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
