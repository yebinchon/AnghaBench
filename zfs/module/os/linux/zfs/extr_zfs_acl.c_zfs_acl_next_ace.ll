; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_acl_next_ace.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_acl_next_ace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_9__ = type { i64 (i8*)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*)* }
%struct.TYPE_11__ = type { i64, i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_10__*, i8*, i32*, i32*, i32*, i32*)* @zfs_acl_next_ace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @zfs_acl_next_ace(%struct.TYPE_10__* %0, i8* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %18 = call i32 @ASSERT(%struct.TYPE_10__* %17)
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %6
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = call %struct.TYPE_11__* @list_head(i32* %23)
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %14, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %26 = icmp eq %struct.TYPE_11__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i8* null, i8** %7, align 8
  br label %155

28:                                               ; preds = %21
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %36, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %28, %6
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %14, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %44 = icmp eq %struct.TYPE_11__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i8* null, i8** %7, align 8
  br label %155

46:                                               ; preds = %39
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %49, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %46
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %58 = call %struct.TYPE_11__* @list_next(i32* %56, %struct.TYPE_11__* %57)
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %14, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %60 = icmp eq %struct.TYPE_11__* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i8* null, i8** %7, align 8
  br label %155

62:                                               ; preds = %54
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %65, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %46
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %82, label %154

82:                                               ; preds = %74
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %15, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i64 (i8*)*, i64 (i8*)** %89, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = call i64 %90(i8* %91)
  store i64 %92, i64* %16, align 8
  %93 = load i8*, i8** %15, align 8
  %94 = ptrtoint i8* %93 to i64
  %95 = load i64, i64* %16, align 8
  %96 = add i64 %94, %95
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = icmp ugt i64 %96, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %82
  store i8* null, i8** %7, align 8
  br label %155

107:                                              ; preds = %82
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 4
  %112 = load i32 (i8*)*, i32 (i8*)** %111, align 8
  %113 = load i8*, i8** %15, align 8
  %114 = call i32 %112(i8* %113)
  %115 = load i32*, i32** %12, align 8
  store i32 %114, i32* %115, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 3
  %120 = load i32 (i8*)*, i32 (i8*)** %119, align 8
  %121 = load i8*, i8** %15, align 8
  %122 = call i32 %120(i8* %121)
  %123 = load i32*, i32** %13, align 8
  store i32 %122, i32* %123, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = load i32 (i8*)*, i32 (i8*)** %127, align 8
  %129 = load i8*, i8** %15, align 8
  %130 = call i32 %128(i8* %129)
  %131 = load i32*, i32** %11, align 8
  store i32 %130, i32* %131, align 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32 (i8*)*, i32 (i8*)** %135, align 8
  %137 = load i8*, i8** %15, align 8
  %138 = call i32 %136(i8* %137)
  %139 = load i32*, i32** %10, align 8
  store i32 %138, i32* %139, align 4
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = ptrtoint i8* %142 to i64
  %144 = load i64, i64* %16, align 8
  %145 = add i64 %143, %144
  %146 = inttoptr i64 %145 to i8*
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %150, align 8
  %153 = load i8*, i8** %15, align 8
  store i8* %153, i8** %7, align 8
  br label %155

154:                                              ; preds = %74
  store i8* null, i8** %7, align 8
  br label %155

155:                                              ; preds = %154, %107, %106, %61, %45, %27
  %156 = load i8*, i8** %7, align 8
  ret i8* %156
}

declare dso_local i32 @ASSERT(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @list_head(i32*) #1

declare dso_local %struct.TYPE_11__* @list_next(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
