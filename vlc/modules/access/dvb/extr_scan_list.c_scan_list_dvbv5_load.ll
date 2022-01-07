; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan_list.c_scan_list_dvbv5_load.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan_list.c_scan_list_dvbv5_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to open dvbv5 file (%s)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @scan_list_dvbv5_load(i32* %0, i8* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__**, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32* @vlc_fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @msg_Err(i32* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %139

28:                                               ; preds = %3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__** %9, %struct.TYPE_8__*** %10, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %11, align 8
  %29 = load i64*, i64** %7, align 8
  store i64 0, i64* %29, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %113, %64, %28
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @getline(i8** %12, i64* %13, i32* %31)
  store i32 %32, i32* %14, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ false, %30 ], [ %37, %34 ]
  br i1 %39, label %40, label %114

40:                                               ; preds = %38
  %41 = load i8*, i8** %12, align 8
  store i8* %41, i8** %16, align 8
  br label %42

42:                                               ; preds = %57, %40
  %43 = load i8*, i8** %16, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %16, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 9
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i1 [ true, %42 ], [ %51, %47 ]
  br i1 %53, label %54, label %60

54:                                               ; preds = %52
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %54
  %58 = load i8*, i8** %16, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %16, align 8
  br label %42

60:                                               ; preds = %52
  %61 = load i8*, i8** %16, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  switch i32 %63, label %104 [
    i32 0, label %64
    i32 10, label %64
    i32 35, label %64
    i32 91, label %65
  ]

64:                                               ; preds = %60, %60, %60
  br label %30

65:                                               ; preds = %60
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %67 = icmp ne %struct.TYPE_8__* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %70 = call i64 @scan_list_entry_add(%struct.TYPE_8__*** %10, %struct.TYPE_8__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i64*, i64** %7, align 8
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %73, align 8
  br label %76

76:                                               ; preds = %72, %68, %65
  %77 = call %struct.TYPE_8__* (...) @scan_list_entry_New()
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %11, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %79 = icmp ne %struct.TYPE_8__* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  store i32 1, i32* %15, align 4
  br label %103

81:                                               ; preds = %76
  %82 = load i8*, i8** %16, align 8
  %83 = call i8* @strstr(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %83, i8** %17, align 8
  %84 = load i8*, i8** %17, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  store i32 1, i32* %15, align 4
  br label %102

87:                                               ; preds = %81
  %88 = load i8*, i8** %16, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8* %89, i8** %18, align 8
  %90 = load i8*, i8** %17, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sub nsw i64 %94, 1
  store i64 %95, i64* %19, align 8
  %96 = call i32 @scan_token_strip(i8** %18, i64* %19)
  %97 = load i8*, i8** %18, align 8
  %98 = load i64, i64* %19, align 8
  %99 = call i32 @strndup(i8* %97, i64 %98)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %87, %86
  br label %103

103:                                              ; preds = %102, %80
  br label %113

104:                                              ; preds = %60
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %106 = icmp ne %struct.TYPE_8__* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %109 = load i8*, i8** %16, align 8
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @scan_list_dvbv5_entry_fill(%struct.TYPE_8__* %108, i8* %109, i32 %110)
  br label %112

112:                                              ; preds = %107, %104
  br label %113

113:                                              ; preds = %112, %103
  br label %30

114:                                              ; preds = %38
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %116 = icmp ne %struct.TYPE_8__* %115, null
  br i1 %116, label %117, label %133

117:                                              ; preds = %114
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %122 = call i32 @scan_list_entry_Delete(%struct.TYPE_8__* %121)
  br label %132

123:                                              ; preds = %117
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %125 = call i64 @scan_list_entry_add(%struct.TYPE_8__*** %10, %struct.TYPE_8__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i64*, i64** %7, align 8
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %128, align 8
  br label %131

131:                                              ; preds = %127, %123
  br label %132

132:                                              ; preds = %131, %120
  br label %133

133:                                              ; preds = %132, %114
  %134 = load i8*, i8** %12, align 8
  %135 = call i32 @free(i8* %134)
  %136 = load i32*, i32** %8, align 8
  %137 = call i32 @fclose(i32* %136)
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %138, %struct.TYPE_8__** %4, align 8
  br label %139

139:                                              ; preds = %133, %24
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %140
}

declare dso_local i32* @vlc_fopen(i8*, i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @scan_list_entry_add(%struct.TYPE_8__***, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @scan_list_entry_New(...) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @scan_token_strip(i8**, i64*) #1

declare dso_local i32 @strndup(i8*, i64) #1

declare dso_local i32 @scan_list_dvbv5_entry_fill(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @scan_list_entry_Delete(%struct.TYPE_8__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
