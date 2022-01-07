; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journal-authenticate.c_journal_file_hmac_put_header.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journal-authenticate.c_journal_file_hmac_put_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32* }

@Header = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4
@boot_id = common dso_local global i32 0, align 4
@file_id = common dso_local global i32 0, align 4
@arena_size = common dso_local global i32 0, align 4
@seqnum_id = common dso_local global i32 0, align 4
@tail_object_offset = common dso_local global i32 0, align 4
@data_hash_table_offset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_file_hmac_put_header(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_7__* %5)
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = call i32 @journal_file_hmac_start(%struct.TYPE_7__* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %81

19:                                               ; preds = %12
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @Header, align 4
  %29 = load i32, i32* @state, align 4
  %30 = call i64 @offsetof(i32 %28, i32 %29)
  %31 = load i32, i32* @Header, align 4
  %32 = load i32, i32* @signature, align 4
  %33 = call i64 @offsetof(i32 %31, i32 %32)
  %34 = sub nsw i64 %30, %33
  %35 = call i32 @gcry_md_write(i32 %22, i32* %27, i64 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* @Header, align 4
  %44 = load i32, i32* @boot_id, align 4
  %45 = call i64 @offsetof(i32 %43, i32 %44)
  %46 = load i32, i32* @Header, align 4
  %47 = load i32, i32* @file_id, align 4
  %48 = call i64 @offsetof(i32 %46, i32 %47)
  %49 = sub nsw i64 %45, %48
  %50 = call i32 @gcry_md_write(i32 %38, i32* %42, i64 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* @Header, align 4
  %59 = load i32, i32* @arena_size, align 4
  %60 = call i64 @offsetof(i32 %58, i32 %59)
  %61 = load i32, i32* @Header, align 4
  %62 = load i32, i32* @seqnum_id, align 4
  %63 = call i64 @offsetof(i32 %61, i32 %62)
  %64 = sub nsw i64 %60, %63
  %65 = call i32 @gcry_md_write(i32 %53, i32* %57, i64 %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* @Header, align 4
  %74 = load i32, i32* @tail_object_offset, align 4
  %75 = call i64 @offsetof(i32 %73, i32 %74)
  %76 = load i32, i32* @Header, align 4
  %77 = load i32, i32* @data_hash_table_offset, align 4
  %78 = call i64 @offsetof(i32 %76, i32 %77)
  %79 = sub nsw i64 %75, %78
  %80 = call i32 @gcry_md_write(i32 %68, i32* %72, i64 %79)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %19, %17, %11
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @journal_file_hmac_start(%struct.TYPE_7__*) #1

declare dso_local i32 @gcry_md_write(i32, i32*, i64) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
