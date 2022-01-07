; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_zdb_vdev_lookup.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_zdb_vdev_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, %struct.TYPE_4__** }

@.str = private unnamed_addr constant [3 x i8] c"s0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (%struct.TYPE_4__*, i8*)* @zdb_vdev_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @zdb_vdev_lookup(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %154

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strtoul(i8* %15, i8** %6, i32 10)
  store i32 %16, i32* %9, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %33, label %20

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 46
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %14
  br label %63

34:                                               ; preds = %28, %23, %20
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp uge i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %154

41:                                               ; preds = %34
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %4, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %3, align 8
  br label %154

58:                                               ; preds = %51, %41
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = call %struct.TYPE_4__* @zdb_vdev_lookup(%struct.TYPE_4__* %59, i8* %61)
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %3, align 8
  br label %154

63:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %150, %63
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %70, label %153

70:                                               ; preds = %64
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %73, i64 %75
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  store %struct.TYPE_4__* %77, %struct.TYPE_4__** %10, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %70
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = call %struct.TYPE_4__* @zdb_vdev_lookup(%struct.TYPE_4__* %83, i8* %84)
  store %struct.TYPE_4__* %85, %struct.TYPE_4__** %10, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %87 = icmp eq %struct.TYPE_4__* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %150

89:                                               ; preds = %82
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %90, %struct.TYPE_4__** %3, align 8
  br label %154

91:                                               ; preds = %70
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @strrchr(i8* %94, i8 signext 47)
  store i8* %95, i8** %7, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  br label %105

101:                                              ; preds = %91
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  br label %105

105:                                              ; preds = %101, %98
  %106 = phi i8* [ %100, %98 ], [ %104, %101 ]
  store i8* %106, i8** %7, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @strlen(i8* %112)
  %114 = sub nsw i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %109, i64 %115
  store i8* %116, i8** %8, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = call i64 @strcmp(i8* %119, i8* %120)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %105
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %124, %struct.TYPE_4__** %3, align 8
  br label %154

125:                                              ; preds = %105
  %126 = load i8*, i8** %7, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = call i64 @strcmp(i8* %126, i8* %127)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %131, %struct.TYPE_4__** %3, align 8
  br label %154

132:                                              ; preds = %125
  %133 = load i8*, i8** %8, align 8
  %134 = call i64 @strcmp(i8* %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %132
  %137 = load i8*, i8** %7, align 8
  %138 = load i8*, i8** %5, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = ptrtoint i8* %139 to i64
  %142 = ptrtoint i8* %140 to i64
  %143 = sub i64 %141, %142
  %144 = trunc i64 %143 to i32
  %145 = call i64 @strncmp(i8* %137, i8* %138, i32 %144)
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %136
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %148, %struct.TYPE_4__** %3, align 8
  br label %154

149:                                              ; preds = %136, %132
  br label %150

150:                                              ; preds = %149, %88
  %151 = load i32, i32* %9, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %64

153:                                              ; preds = %64
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %154

154:                                              ; preds = %153, %147, %130, %123, %89, %58, %56, %40, %13
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %155
}

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
