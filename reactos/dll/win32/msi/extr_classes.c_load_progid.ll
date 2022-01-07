; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_classes.c_load_progid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_classes.c_load_progid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i8*, i8*, i32*, i8*, i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"loading progid %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unknown parent ProgID %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Unknown class %s\0A\00", align 1
@load_progid.fmt = internal constant [6 x i8] c"%s,%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_11__*, i32*)* @load_progid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @load_progid(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = call %struct.TYPE_10__* @msi_alloc_zero(i32 64)
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %6, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %158

16:                                               ; preds = %2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 7
  %21 = call i32 @list_add_tail(i32* %18, i32* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i8* @msi_dup_record_field(i32* %22, i32 1)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 6
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 6
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @debugstr_w(i8* %28)
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i8* @MSI_RecordGetString(i32* %31, i32 2)
  store i8* %32, i8** %7, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call %struct.TYPE_10__* @load_given_progid(%struct.TYPE_11__* %33, i8* %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %37, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = icmp eq %struct.TYPE_10__* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %16
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @debugstr_w(i8* %46)
  %48 = call i32 @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %42, %16
  %50 = load i32*, i32** %5, align 8
  %51 = call i8* @MSI_RecordGetString(i32* %50, i32 3)
  store i8* %51, i8** %7, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32* @load_given_class(%struct.TYPE_11__* %52, i8* %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 5
  store i32* %54, i32** %56, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %49
  %62 = load i8*, i8** %7, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @debugstr_w(i8* %65)
  %67 = call i32 @FIXME(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %61, %49
  %69 = load i32*, i32** %5, align 8
  %70 = call i8* @msi_dup_record_field(i32* %69, i32 4)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @MSI_RecordIsNull(i32* %73, i32 6)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %101, label %76

76:                                               ; preds = %68
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @MSI_RecordGetInteger(i32* %77, i32 6)
  store i32 %78, i32* %8, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = call i8* @MSI_RecordGetString(i32* %79, i32 5)
  store i8* %80, i8** %9, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i8* @msi_build_icon_path(%struct.TYPE_11__* %81, i8* %82)
  store i8* %83, i8** %10, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @strlenW(i8* %84)
  %86 = add nsw i32 %85, 10
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 1
  %89 = trunc i64 %88 to i32
  %90 = call i8* @msi_alloc(i32 %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @sprintfW(i8* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @load_progid.fmt, i64 0, i64 0), i8* %96, i32 %97)
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @msi_free(i8* %99)
  br label %113

101:                                              ; preds = %68
  %102 = load i32*, i32** %5, align 8
  %103 = call i8* @MSI_RecordGetString(i32* %102, i32 5)
  store i8* %103, i8** %7, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = call i8* @msi_build_icon_path(%struct.TYPE_11__* %107, i8* %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %106, %101
  br label %113

113:                                              ; preds = %112, %76
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %115, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %117, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = icmp ne %struct.TYPE_10__* %120, null
  br i1 %121, label %122, label %156

122:                                              ; preds = %113
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %127 = icmp ne %struct.TYPE_10__* %125, %126
  br i1 %127, label %128, label %156

128:                                              ; preds = %122
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  store %struct.TYPE_10__* %131, %struct.TYPE_10__** %11, align 8
  br label %132

132:                                              ; preds = %145, %128
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = icmp ne %struct.TYPE_10__* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %142 = icmp ne %struct.TYPE_10__* %140, %141
  br label %143

143:                                              ; preds = %137, %132
  %144 = phi i1 [ false, %132 ], [ %142, %137 ]
  br i1 %144, label %145, label %149

145:                                              ; preds = %143
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  store %struct.TYPE_10__* %148, %struct.TYPE_10__** %11, align 8
  br label %132

149:                                              ; preds = %143
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  store %struct.TYPE_10__* %150, %struct.TYPE_10__** %152, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  store %struct.TYPE_10__* %153, %struct.TYPE_10__** %155, align 8
  br label %156

156:                                              ; preds = %149, %122, %113
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %157, %struct.TYPE_10__** %3, align 8
  br label %158

158:                                              ; preds = %156, %15
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %159
}

declare dso_local %struct.TYPE_10__* @msi_alloc_zero(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i8* @msi_dup_record_field(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i8* @MSI_RecordGetString(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @load_given_progid(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32* @load_given_class(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @MSI_RecordIsNull(i32*, i32) #1

declare dso_local i32 @MSI_RecordGetInteger(i32*, i32) #1

declare dso_local i8* @msi_build_icon_path(%struct.TYPE_11__*, i8*) #1

declare dso_local i8* @msi_alloc(i32) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @sprintfW(i8*, i8*, i8*, i32) #1

declare dso_local i32 @msi_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
