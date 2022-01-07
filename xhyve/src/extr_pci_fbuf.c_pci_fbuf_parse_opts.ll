; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_fbuf.c_pci_fbuf_parse_opts.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_fbuf.c_pci_fbuf_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_fbuf_softc = type { i32, i8*, i32, i32, i8*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@DEBUG_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"pci_fbuf option %s = %s\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"rfb\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"vga\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@COLS_MAX = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@ROWS_MAX = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_fbuf_softc*, i8*)* @pci_fbuf_parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_fbuf_parse_opts(%struct.pci_fbuf_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.pci_fbuf_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_fbuf_softc* %0, %struct.pci_fbuf_softc** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @strdup(i8* %10)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @strtok(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %6, align 8
  br label %14

14:                                               ; preds = %178, %2
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %180

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %23 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %178

24:                                               ; preds = %17
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 61)
  store i8* %26, i8** %7, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @pci_fbuf_usage(i8* %29)
  store i32 -1, i32* %9, align 4
  br label %181

31:                                               ; preds = %24
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %7, align 8
  store i8 0, i8* %32, align 1
  %34 = load i32, i32* @DEBUG_VERBOSE, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @DPRINTF(i32 %34, i8* %36)
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %41, %31
  %46 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %8, align 8
  %51 = call i8* @atoi(i8* %50)
  %52 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %53 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  br label %62

54:                                               ; preds = %45
  %55 = load i8*, i8** %7, align 8
  %56 = call i8* @atoi(i8* %55)
  %57 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %58 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %61 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %54, %49
  br label %177

63:                                               ; preds = %41
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %98, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %7, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %73 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %72, i32 0, i32 2
  store i32 0, i32* %73, align 8
  br label %97

74:                                               ; preds = %67
  %75 = load i8*, i8** %7, align 8
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %80 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  %81 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %82 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %81, i32 0, i32 3
  store i32 0, i32* %82, align 4
  br label %96

83:                                               ; preds = %74
  %84 = load i8*, i8** %7, align 8
  %85 = call i64 @strcmp(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %89 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %88, i32 0, i32 2
  store i32 1, i32* %89, align 8
  %90 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %91 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %90, i32 0, i32 3
  store i32 1, i32* %91, align 4
  br label %95

92:                                               ; preds = %83
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 @pci_fbuf_usage(i8* %93)
  store i32 -1, i32* %9, align 4
  br label %181

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %78
  br label %97

97:                                               ; preds = %96, %71
  br label %176

98:                                               ; preds = %63
  %99 = load i8*, i8** %6, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %130, label %102

102:                                              ; preds = %98
  %103 = load i8*, i8** %7, align 8
  %104 = call i8* @atoi(i8* %103)
  %105 = ptrtoint i8* %104 to i64
  %106 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %107 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i64 %105, i64* %108, align 8
  %109 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %110 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @COLS_MAX, align 8
  %114 = icmp sgt i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %102
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @pci_fbuf_usage(i8* %116)
  store i32 -1, i32* %9, align 4
  br label %181

118:                                              ; preds = %102
  %119 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %120 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %126 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store i64 1920, i64* %127, align 8
  br label %128

128:                                              ; preds = %124, %118
  br label %129

129:                                              ; preds = %128
  br label %175

130:                                              ; preds = %98
  %131 = load i8*, i8** %6, align 8
  %132 = call i64 @strcmp(i8* %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %162, label %134

134:                                              ; preds = %130
  %135 = load i8*, i8** %7, align 8
  %136 = call i8* @atoi(i8* %135)
  %137 = ptrtoint i8* %136 to i64
  %138 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %139 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  store i64 %137, i64* %140, align 8
  %141 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %142 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @ROWS_MAX, align 8
  %146 = icmp sgt i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %134
  %148 = load i8*, i8** %6, align 8
  %149 = call i32 @pci_fbuf_usage(i8* %148)
  store i32 -1, i32* %9, align 4
  br label %181

150:                                              ; preds = %134
  %151 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %152 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %158 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  store i64 1080, i64* %159, align 8
  br label %160

160:                                              ; preds = %156, %150
  br label %161

161:                                              ; preds = %160
  br label %174

162:                                              ; preds = %130
  %163 = load i8*, i8** %6, align 8
  %164 = call i64 @strcmp(i8* %163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = load i8*, i8** %7, align 8
  %168 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %169 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %168, i32 0, i32 4
  store i8* %167, i8** %169, align 8
  br label %173

170:                                              ; preds = %162
  %171 = load i8*, i8** %6, align 8
  %172 = call i32 @pci_fbuf_usage(i8* %171)
  store i32 -1, i32* %9, align 4
  br label %181

173:                                              ; preds = %166
  br label %174

174:                                              ; preds = %173, %161
  br label %175

175:                                              ; preds = %174, %129
  br label %176

176:                                              ; preds = %175, %97
  br label %177

177:                                              ; preds = %176, %62
  br label %178

178:                                              ; preds = %177, %21
  %179 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %179, i8** %6, align 8
  br label %14

180:                                              ; preds = %14
  br label %181

181:                                              ; preds = %180, %170, %147, %115, %92, %28
  %182 = load i32, i32* %9, align 4
  ret i32 %182
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @pci_fbuf_usage(i8*) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
