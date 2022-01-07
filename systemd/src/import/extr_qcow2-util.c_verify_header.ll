; ModuleID = '/home/carl/AnghaBench/systemd/src/import/extr_qcow2-util.c_verify_header.c'
source_filename = "/home/carl/AnghaBench/systemd/src/import/extr_qcow2-util.c_verify_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }

@QCOW2_MAGIC = common dso_local global i64 0, align 8
@EBADMSG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @verify_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_header(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %5 = call i32 @assert(%struct.TYPE_12__* %4)
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = call i64 @HEADER_MAGIC(%struct.TYPE_12__* %6)
  %8 = load i64, i64* @QCOW2_MAGIC, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EBADMSG, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %81

13:                                               ; preds = %1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = call i32 @HEADER_VERSION(%struct.TYPE_12__* %14)
  %16 = call i32 @IN_SET(i32 %15, i32 2, i32 3)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %81

21:                                               ; preds = %13
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = call i64 @HEADER_CRYPT_METHOD(%struct.TYPE_12__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %81

28:                                               ; preds = %21
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = call i32 @HEADER_CLUSTER_BITS(%struct.TYPE_12__* %29)
  %31 = icmp slt i32 %30, 9
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EBADMSG, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %81

35:                                               ; preds = %28
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = call i32 @HEADER_CLUSTER_BITS(%struct.TYPE_12__* %36)
  %38 = icmp sgt i32 %37, 21
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EBADMSG, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %81

42:                                               ; preds = %35
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = call i32 @HEADER_SIZE(%struct.TYPE_12__* %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = call i32 @HEADER_CLUSTER_SIZE(%struct.TYPE_12__* %45)
  %47 = srem i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @EBADMSG, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %81

52:                                               ; preds = %42
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = call i32 @HEADER_L1_SIZE(%struct.TYPE_12__* %53)
  %55 = icmp sgt i32 %54, 33554432
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EBADMSG, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %81

59:                                               ; preds = %52
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %61 = call i32 @HEADER_VERSION(%struct.TYPE_12__* %60)
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @EOPNOTSUPP, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %81

71:                                               ; preds = %63
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %73 = call i32 @HEADER_HEADER_LENGTH(%struct.TYPE_12__* %72)
  %74 = sext i32 %73 to i64
  %75 = icmp ult i64 %74, 8
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @EBADMSG, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %81

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %59
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %76, %68, %56, %49, %39, %32, %25, %18, %10
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

declare dso_local i64 @HEADER_MAGIC(%struct.TYPE_12__*) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @HEADER_VERSION(%struct.TYPE_12__*) #1

declare dso_local i64 @HEADER_CRYPT_METHOD(%struct.TYPE_12__*) #1

declare dso_local i32 @HEADER_CLUSTER_BITS(%struct.TYPE_12__*) #1

declare dso_local i32 @HEADER_SIZE(%struct.TYPE_12__*) #1

declare dso_local i32 @HEADER_CLUSTER_SIZE(%struct.TYPE_12__*) #1

declare dso_local i32 @HEADER_L1_SIZE(%struct.TYPE_12__*) #1

declare dso_local i32 @HEADER_HEADER_LENGTH(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
