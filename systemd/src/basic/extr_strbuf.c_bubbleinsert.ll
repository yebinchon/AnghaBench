; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_strbuf.c_bubbleinsert.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_strbuf.c_bubbleinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf_node = type { i32, %struct.strbuf_child_entry* }
%struct.strbuf_child_entry = type { %struct.strbuf_node*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf_node*, i32, %struct.strbuf_node*)* @bubbleinsert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bubbleinsert(%struct.strbuf_node* %0, i32 %1, %struct.strbuf_node* %2) #0 {
  %4 = alloca %struct.strbuf_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf_node*, align 8
  %7 = alloca %struct.strbuf_child_entry, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.strbuf_node* %0, %struct.strbuf_node** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.strbuf_node* %2, %struct.strbuf_node** %6, align 8
  %11 = getelementptr inbounds %struct.strbuf_child_entry, %struct.strbuf_child_entry* %7, i32 0, i32 0
  %12 = load %struct.strbuf_node*, %struct.strbuf_node** %6, align 8
  store %struct.strbuf_node* %12, %struct.strbuf_node** %11, align 8
  %13 = getelementptr inbounds %struct.strbuf_child_entry, %struct.strbuf_child_entry* %7, i32 0, i32 1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %13, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.strbuf_node*, %struct.strbuf_node** %4, align 8
  %16 = getelementptr inbounds %struct.strbuf_node, %struct.strbuf_node* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %40, %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %23, %24
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %10, align 4
  %27 = load %struct.strbuf_node*, %struct.strbuf_node** %4, align 8
  %28 = getelementptr inbounds %struct.strbuf_node, %struct.strbuf_node* %27, i32 0, i32 1
  %29 = load %struct.strbuf_child_entry*, %struct.strbuf_child_entry** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.strbuf_child_entry, %struct.strbuf_child_entry* %29, i64 %31
  %33 = call i64 @strbuf_children_cmp(%struct.strbuf_child_entry* %32, %struct.strbuf_child_entry* %7)
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %40

38:                                               ; preds = %22
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %38, %35
  br label %18

41:                                               ; preds = %18
  %42 = load %struct.strbuf_node*, %struct.strbuf_node** %4, align 8
  %43 = getelementptr inbounds %struct.strbuf_node, %struct.strbuf_node* %42, i32 0, i32 1
  %44 = load %struct.strbuf_child_entry*, %struct.strbuf_child_entry** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.strbuf_child_entry, %struct.strbuf_child_entry* %44, i64 %46
  %48 = getelementptr inbounds %struct.strbuf_child_entry, %struct.strbuf_child_entry* %47, i64 1
  %49 = load %struct.strbuf_node*, %struct.strbuf_node** %4, align 8
  %50 = getelementptr inbounds %struct.strbuf_node, %struct.strbuf_node* %49, i32 0, i32 1
  %51 = load %struct.strbuf_child_entry*, %struct.strbuf_child_entry** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.strbuf_child_entry, %struct.strbuf_child_entry* %51, i64 %53
  %55 = load %struct.strbuf_node*, %struct.strbuf_node** %4, align 8
  %56 = getelementptr inbounds %struct.strbuf_node, %struct.strbuf_node* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = mul i64 16, %60
  %62 = trunc i64 %61 to i32
  %63 = call i32 @memmove(%struct.strbuf_child_entry* %48, %struct.strbuf_child_entry* %54, i32 %62)
  %64 = load %struct.strbuf_node*, %struct.strbuf_node** %4, align 8
  %65 = getelementptr inbounds %struct.strbuf_node, %struct.strbuf_node* %64, i32 0, i32 1
  %66 = load %struct.strbuf_child_entry*, %struct.strbuf_child_entry** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.strbuf_child_entry, %struct.strbuf_child_entry* %66, i64 %68
  %70 = bitcast %struct.strbuf_child_entry* %69 to i8*
  %71 = bitcast %struct.strbuf_child_entry* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 16, i1 false)
  %72 = load %struct.strbuf_node*, %struct.strbuf_node** %4, align 8
  %73 = getelementptr inbounds %struct.strbuf_node, %struct.strbuf_node* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  ret void
}

declare dso_local i64 @strbuf_children_cmp(%struct.strbuf_child_entry*, %struct.strbuf_child_entry*) #1

declare dso_local i32 @memmove(%struct.strbuf_child_entry*, %struct.strbuf_child_entry*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
